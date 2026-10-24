import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
assert.equal(execFileSync('calcit',['-v'],{encoding:'utf8'}).trim(),'0.30.1');
const run=(...a)=>execFileSync('calcit',['calcit.cirru',...a],{encoding:'utf8',maxBuffer:48e6,stdio:['ignore','pipe','pipe']});
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
assert.equal(blob(),'d782cb6832178b644692e1775c93e624cf67a125');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const input=JSON.parse(readFileSync('reviewed.json','utf8'));
const before={config:norm(input.config.data),namespaces:input.namespaces.map(x=>norm(x.data)),defs:input.definitions.map(x=>norm(x.data))};
assert.equal(before.defs.length,25);assert.equal(before.defs.reduce((n,d)=>n+d.tests.length,0),1);assert.equal(before.defs.reduce((n,d)=>n+d.examples.length,0),0);
assert.deepEqual(q('config'),before.config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),before.namespaces);
for(const d of before.defs)assert.deepEqual(q('def',d.id),d);
const expected=structuredClone(before),ops=[],sites=[],counts={merge:0,unwrapOr:0,unwrap:0,css:0,dom:0,existingDOM:0,message:0,watcher:0,host:0,render:0,timer:0,redundantMap:0};
const show=(id,path)=>JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree;
const replace=(id,path,value)=>ops.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(value)]);
const map=['::',"'Map","'Tag","'Dynamic"],dispatch=['::',"'Fn",['{}',[':rest',"'Dynamic"],[':return',"'Unit"],[':args',['[]',"'Dynamic"]]]];
const domHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',map,dispatch]]]];
const state=['::',"'reel.typed/State","'app.schema/Op","'app.schema/Store"];
const watchHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',state,state]]]];
const hostHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',"'js-ffi.browser/EventHost"]]]];
const renderHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]',"'Dynamic"]]]];
const timerHint=['hint-fn',['{}',[':return',"'Unit"],[':args',['[]']],[':features',['#{}',':js-ffi']]]];
function insertHint(id,path,x,hint){assert.equal(x[0],'fn');assert.notEqual(x[2]?.[0],'hint-fn');const p=[...path,2];ops.push(['tree','insert',id,'--path','@'+p.join('.'),'--at','before','--input-format','json-ast','--code',JSON.stringify(hint)]);x.splice(2,0,structuredClone(hint));sites.push({id,path:p,inserted:hint});}
function walk(x,path,id){
  if(!Array.isArray(x)||['quote','quasiquote','comment',';','defmacro'].includes(x[0]))return x;
  const original=structuredClone(x);
  if(['merge','option:unwrap-or','option:unwrap'].includes(x[0])){assert.deepEqual(show(id,path),original);const old=x[0],next={merge:'.merge','option:unwrap-or':'.unwrap-or','option:unwrap':'.unwrap'}[old];counts[{merge:'merge','option:unwrap-or':'unwrapOr','option:unwrap':'unwrap'}[old]]++;replace(id,[...path,0],next);x[0]=next;sites.push({id,path,original,replacement:next});}
  if(x[0]==='decode-map-as'&&x[1]==='info'){assert.equal(id,'app.comp.container/comp-container');assert.deepEqual(x,['decode-map-as','info',map]);assert.deepEqual(show(id,path),original);replace(id,path,'info');counts.redundantMap++;return 'info';}
  if(x[0]==='{}')for(let j=1;j<x.length;j++){
    const pair=x[j];if(!Array.isArray(pair)||pair.length!==2)continue;const [k,v]=pair;let next;
    if([':padding',':font-size',':width'].includes(k)&&typeof v==='string'&&/^\d+$/.test(v))next='|'+v+'px';
    else if([':flex-wrap',':overflow',':text-align'].includes(k)&&typeof v==='string'&&v.startsWith(':'))next='|'+v.slice(1);
    else if(k===':font-weight'&&v==='300')next='|300';
    if(next!==undefined){assert.ok(id.startsWith('app.comp.container/'));const p=[...path,j,1];assert.equal(show(id,p),v);replace(id,p,next);pair[1]=next;counts.css++;sites.push({id,path:p,before:v,after:next});}
  }
  const isDOM=id.startsWith('app.comp.container/')&&x[0]==='fn'&&JSON.stringify(x[1])===JSON.stringify(['e','d!']);
  const isMessage=id==='app.comp.container/comp-container'&&x[0]==='fn'&&JSON.stringify(x[1])===JSON.stringify(['info','d!']);
  x=x.map((v,i)=>walk(v,[...path,i],id));
  if(isDOM){assert.deepEqual(show(id,path),original);if(original[2]?.[0]==='hint-fn'){assert.equal(id,'app.comp.container/comp-icon');const hint=structuredClone(original[2]);const args=hint[1].find(z=>Array.isArray(z)&&z[0]===':args');assert.equal(args[1][2][0],'::');args[1][2]=structuredClone(dispatch);replace(id,[...path,2],hint);x[2]=hint;counts.existingDOM++;}else{assert.equal(id,'app.comp.container/comp-header');insertHint(id,path,x,domHint);counts.dom++;}}
  if(isMessage){assert.deepEqual(show(id,path),original);insertHint(id,path,x,domHint);counts.message++;}
  if(x[0]==='add-watch!'){assert.equal(x[1],'*reel');assert.deepEqual(show(id,[...path,3]),original[3]);insertHint(id,[...path,3],x[3],watchHint);counts.watcher++;}
  if(x[0]==='set-before-unload!'){assert.deepEqual(show(id,[...path,1]),original[1]);insertHint(id,[...path,1],x[1],hostHint);counts.host++;}
  if(x[0]==='render!'){assert.deepEqual(show(id,[...path,3]),original[3]);assert.deepEqual(x[3][1],['op']);insertHint(id,[...path,3],x[3],renderHint);counts.render++;}
  if(x[0]==='js/setTimeout'){assert.equal(id,'app.comp.container/copy-text!');assert.equal(x[2],'2000');assert.deepEqual(show(id,[...path,1]),original[1]);insertHint(id,[...path,1],x[1],timerHint);counts.timer++;}
  return x;
}
for(const d of expected.defs)d.code=walk(d.code,[],d.id);
assert.deepEqual(counts,{merge:3,unwrapOr:2,unwrap:7,css:8,dom:1,existingDOM:2,message:1,watcher:2,host:1,render:1,timer:1,redundantMap:1});assert.equal(ops.length,30);
for(const d of before.defs){const e=expected.defs.find(x=>x.id===d.id);for(const k of Object.keys(d).filter(k=>k!=='code'))assert.deepEqual(e[k],d[k]);}
for(const id of ['app.schema/Op','app.schema/Store','app.schema/require-op','app.schema/decode-store','app.schema/store','app.updater/updater','app.main/*reel','app.main/dispatch!','app.comp.container/load-icons','app.comp.container/icons-dict'])assert.deepEqual(expected.defs.find(d=>d.id===id),before.defs.find(d=>d.id===id));
const main=expected.defs.find(d=>d.id==='app.main/main!'),oldMain=before.defs.find(d=>d.id===main.id);
assert.equal(main.code[4][0],'match');assert.equal(main.code[5][0],'render-app!');assert.deepEqual(main.code[4][2][1][3],oldMain.code[4][2][1][3]);
const reload=expected.defs.find(d=>d.id==='app.main/reload!'),oldReload=before.defs.find(d=>d.id===reload.id);assert.deepEqual(reload.code[3][2][5],oldReload.code[3][2][5]);assert.deepEqual(reload.code[3][3],oldReload.code[3][3]);
mkdirSync('acceptance',{recursive:true});for(const [name,value]of Object.entries({before,expected,sites,operations:ops}))writeFileSync('acceptance/'+name+'.json',JSON.stringify(value,null,2));
const txn=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run(...txn,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...txn,'--expect-revision',preview.scoped_revision));
const after={config:q('config'),namespaces:q('ns').namespaces.map(n=>q('ns',n)),defs:expected.defs.map(d=>q('def',d.id))};assert.deepEqual(after,expected);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());
writeFileSync('acceptance/summary.json',JSON.stringify({definitions:25,tests:1,examples:0,operations:30,counts,unsafeBefore:0,unsafeAfter:0,preserved:'Allpublicschemas/imports/metadata/config/originaloperationtest/Store/Op/wire/search/clipboardcalland2000mstimer/HUDrestoreandreload unchanged. Realproducercallbackhints;redundantMessageMapdecode removed. Nohelpers/casts/budgets/tests/frameworks/compiler rules.'},null,2));
