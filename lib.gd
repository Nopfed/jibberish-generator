extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var vowels = ['a', 'e', 'i', 'o', 'u', 
	'aa', 'ae', 'ai', 'ao', 'au', 
	'ea', 'ee', 'ei', 'eo', 'eu', 
	'ia', 'ie', 'ii', 'io', 'iu', 
	'oa', 'oe', 'oi', 'oo', 'ou', 
	'ua', 'ue', 'ui', 'uo', 'uu', 
	'aae', 'aai', 'aao', 'aau', 'aea', 'aee', 'aei', 'aeo', 'aeu', 'aia', 'aie', 'aii', 'aio', 'aiu', 'aoa', 'aoe', 'aoi', 'aoo', 'aou', 'aua', 'aue', 'aui', 'auo', 'auu', 
	'eaa', 'eae', 'eai', 'eao', 'eau', 'eea', 'eei', 'eeo', 'eeu', 'eia', 'eie', 'eii', 'eio', 'eiu', 'eoa', 'eoe', 'eoi', 'eoo', 'eou', 'eua', 'eue', 'eui', 'euo', 'euu', 
	'iaa', 'iae', 'iai', 'iao', 'iau', 'iea', 'iee', 'iei', 'ieo', 'ieu', 'iia', 'iie', 'iio', 'iiu', 'ioa', 'ioe', 'ioi', 'ioo', 'iou', 'iua', 'iue', 'iui', 'iuo', 'iuu', 
	'oaa', 'oae', 'oai', 'oao', 'oau', 'oea', 'oee', 'oei', 'oeo', 'oeu', 'oia', 'oie', 'oii', 'oio', 'oiu', 'ooa', 'ooe', 'ooi', 'oou', 'oua', 'oue', 'oui', 'ouo', 'ouu', 
	'uaa', 'uae', 'uai', 'uao', 'uau', 'uea', 'uee', 'uei', 'ueo', 'ueu', 'uia', 'uie', 'uii', 'uio', 'uiu', 'uoa', 'uoe', 'uoi', 'uoo', 'uou', 'uua', 'uue', 'uui', 'uuo', 
	'iaou', 'aeou', 'uoia']

var c_starts = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 
		'bl', 'br', 'ch', 'kh', 'qh', 'dr', 'fl', 'fj', 'fr', 'gh', 'gl', 'gr', 'kn', 'kl', 'cl', 'ql', 'kr', 'cr', 'qr', 'kw', 'cw', 'qw', 'pl', 'pr', 'sh', 'sk', 'sc', 'sq', 'sl', 'sm', 'sn', 'sp', 'st', 'sv', 'sw', 'th', 'tr', 'tw', 'vl', 'vr', 'wh', 
		'thr', 'str', 'spr', 'shr', 'skr', 'scr', 'sqr', 'spl', 'skw', 'scw', 'sqw', 'thw', 'sfr', 'shm', 'shn', 'chr', 'sch',
		'shkw', 'shcw', 'shqw', 'shpl', 'shtr', 'shtw', 'shkr', 'shcr', 'shqr']
		
var c_middles = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 
				'bb', 'bc', 'bd', 'bf', 'bg', 'bh', 'bj', 'bk', 'bl', 'bm', 'bn', 'bp', 'bq', 'br', 'bs', 'bt', 'bv', 'bw', 'bx', 'by', 'bz', 
				'cb', 'cc', 'cd', 'cf', 'cg', 'ch', 'cj', 'ck', 'cl', 'cm', 'cn', 'cp', 'cq', 'cr', 'cs', 'ct', 'cv', 'cw', 'cx', 'cy', 'cz', 
				'db', 'dc', 'dd', 'df', 'dg', 'dh', 'dj', 'dk', 'dl', 'dm', 'dn', 'dp', 'dq', 'dr', 'ds', 'dt', 'dv', 'dw', 'dx', 'dy', 'dz', 
				'fb', 'fc', 'fd', 'ff', 'fg', 'fh', 'fj', 'fk', 'fl', 'fm', 'fn', 'fp', 'fq', 'fr', 'fs', 'ft', 'fv', 'fw', 'fx', 'fy', 'fz', 
				'gb', 'gc', 'gd', 'gf', 'gg', 'gh', 'gj', 'gk', 'gl', 'gm', 'gn', 'gp', 'gq', 'gr', 'gs', 'gt', 'gv', 'gw', 'gx', 'gy', 'gz', 
				'hb', 'hc', 'hd', 'hf', 'hg', 'hh', 'hj', 'hk', 'hl', 'hm', 'hn', 'hp', 'hq', 'hr', 'hs', 'ht', 'hv', 'hw', 'hx', 'hy', 'hz', 
				'jb', 'jc', 'jd', 'jf', 'jg', 'jh', 'jj', 'jk', 'jl', 'jm', 'jn', 'jp', 'jq', 'jr', 'js', 'jt', 'jv', 'jw', 'jx', 'jy', 'jz', 
				'kb', 'kc', 'kd', 'kf', 'kg', 'kh', 'kj', 'kk', 'kl', 'km', 'kn', 'kp', 'kq', 'kr', 'ks', 'kt', 'kv', 'kw', 'kx', 'ky', 'kz', 
				'lb', 'lc', 'ld', 'lf', 'lg', 'lh', 'lj', 'lk', 'll', 'lm', 'ln', 'lp', 'lq', 'lr', 'ls', 'lt', 'lv', 'lw', 'lx', 'ly', 'lz', 
				'mb', 'mc', 'md', 'mf', 'mg', 'mh', 'mj', 'mk', 'ml', 'mm', 'mn', 'mp', 'mq', 'mr', 'ms', 'mt', 'mv', 'mw', 'mx', 'my', 'mz', 
				'nb', 'nc', 'nd', 'nf', 'ng', 'nh', 'nj', 'nk', 'nl', 'nm', 'nn', 'np', 'nq', 'nr', 'ns', 'nt', 'nv', 'nw', 'nx', 'ny', 'nz', 
				'pb', 'pc', 'pd', 'pf', 'pg', 'ph', 'pj', 'pk', 'pl', 'pm', 'pn', 'pp', 'pq', 'pr', 'ps', 'pt', 'pv', 'pw', 'px', 'py', 'pz', 
				'qb', 'qc', 'qd', 'qf', 'qg', 'qh', 'qj', 'qk', 'ql', 'qm', 'qn', 'qp', 'qq', 'qr', 'qs', 'qt', 'qv', 'qw', 'qx', 'qy', 'qz', 
				'rb', 'rc', 'rd', 'rf', 'rg', 'rh', 'rj', 'rk', 'rl', 'rm', 'rn', 'rp', 'rq', 'rr', 'rs', 'rt', 'rv', 'rw', 'rx', 'ry', 'rz', 
				'sb', 'sc', 'sd', 'sf', 'sg', 'sh', 'sj', 'sk', 'sl', 'sm', 'sn', 'sp', 'sq', 'sr', 'ss', 'st', 'sv', 'sw', 'sx', 'sy', 'sz', 
				'tb', 'tc', 'td', 'tf', 'tg', 'th', 'tj', 'tk', 'tl', 'tm', 'tn', 'tp', 'tq', 'tr', 'ts', 'tt', 'tv', 'tw', 'tx', 'ty', 'tz', 
				'vb', 'vc', 'vd', 'vf', 'vg', 'vh', 'vj', 'vk', 'vl', 'vm', 'vn', 'vp', 'vq', 'vr', 'vs', 'vt', 'vv', 'vw', 'vx', 'vy', 'vz', 
				'wb', 'wc', 'wd', 'wf', 'wg', 'wh', 'wj', 'wk', 'wl', 'wm', 'wn', 'wp', 'wq', 'wr', 'ws', 'wt', 'wv', 'ww', 'wx', 'wy', 'wz', 
				'xb', 'xc', 'xd', 'xf', 'xg', 'xh', 'xj', 'xk', 'xl', 'xm', 'xn', 'xp', 'xq', 'xr', 'xs', 'xt', 'xv', 'xw', 'xx', 'xy', 'xz', 
				'yb', 'yc', 'yd', 'yf', 'yg', 'yh', 'yj', 'yk', 'yl', 'ym', 'yn', 'yp', 'yq', 'yr', 'ys', 'yt', 'yv', 'yw', 'yx', 'yy', 'yz', 
				'zb', 'zc', 'zd', 'zf', 'zg', 'zh', 'zj', 'zk', 'zl', 'zm', 'zn', 'zp', 'zq', 'zr', 'zs', 'zt', 'zv', 'zw', 'zx', 'zy', 'zz',
				'bbl', 'bbr', 'bbw', 'bcl', 'bcr', 'bcw', 'bdl', 'bdr', 'bdw', 'bfl', 'bfr', 'bfw', 'bgl', 'bgr', 'bgw', 'bkl', 'bkr', 'bkw', 'bpl', 'bpr', 'bpw', 'bql', 'bqr', 'bqw', 'btl', 'btr', 'btw', 'bvl', 'bvr', 'bvw', 
				'cbl', 'cbr', 'cbw', 'ccl', 'ccr', 'ccw', 'cdl', 'cdr', 'cdw', 'cfl', 'cfr', 'cfw', 'cgl', 'cgr', 'cgw', 'ckl', 'ckr', 'ckw', 'cpl', 'cpr', 'cpw', 'cql', 'cqr', 'cqw', 'ctl', 'ctr', 'ctw', 'cvl', 'cvr', 'cvw', 
				'dbl', 'dbr', 'dbw', 'dcl', 'dcr', 'dcw', 'ddl', 'ddr', 'ddw', 'dfl', 'dfr', 'dfw', 'dgl', 'dgr', 'dgw', 'dkl', 'dkr', 'dkw', 'dpl', 'dpr', 'dpw', 'dql', 'dqr', 'dqw', 'dtl', 'dtr', 'dtw', 'dvl', 'dvr', 'dvw', 
				'fbl', 'fbr', 'fbw', 'fcl', 'fcr', 'fcw', 'fdl', 'fdr', 'fdw', 'ffl', 'ffr', 'ffw', 'fgl', 'fgr', 'fgw', 'fkl', 'fkr', 'fkw', 'fpl', 'fpr', 'fpw', 'fql', 'fqr', 'fqw', 'ftl', 'ftr', 'ftw', 'fvl', 'fvr', 'fvw', 
				'gbl', 'gbr', 'gbw', 'gcl', 'gcr', 'gcw', 'gdl', 'gdr', 'gdw', 'gfl', 'gfr', 'gfw', 'ggl', 'ggr', 'ggw', 'gkl', 'gkr', 'gkw', 'gpl', 'gpr', 'gpw', 'gql', 'gqr', 'gqw', 'gtl', 'gtr', 'gtw', 'gvl', 'gvr', 'gvw', 
				'hbl', 'hbr', 'hbw', 'hcl', 'hcr', 'hcw', 'hdl', 'hdr', 'hdw', 'hfl', 'hfr', 'hfw', 'hgl', 'hgr', 'hgw', 'hkl', 'hkr', 'hkw', 'hpl', 'hpr', 'hpw', 'hql', 'hqr', 'hqw', 'htl', 'htr', 'htw', 'hvl', 'hvr', 'hvw', 
				'jbl', 'jbr', 'jbw', 'jcl', 'jcr', 'jcw', 'jdl', 'jdr', 'jdw', 'jfl', 'jfr', 'jfw', 'jgl', 'jgr', 'jgw', 'jkl', 'jkr', 'jkw', 'jpl', 'jpr', 'jpw', 'jql', 'jqr', 'jqw', 'jtl', 'jtr', 'jtw', 'jvl', 'jvr', 'jvw', 
				'kbl', 'kbr', 'kbw', 'kcl', 'kcr', 'kcw', 'kdl', 'kdr', 'kdw', 'kfl', 'kfr', 'kfw', 'kgl', 'kgr', 'kgw', 'kkl', 'kkr', 'kkw', 'kpl', 'kpr', 'kpw', 'kql', 'kqr', 'kqw', 'ktl', 'ktr', 'ktw', 'kvl', 'kvr', 'kvw', 
				'lbl', 'lbr', 'lbw', 'lcl', 'lcr', 'lcw', 'ldl', 'ldr', 'ldw', 'lfl', 'lfr', 'lfw', 'lgl', 'lgr', 'lgw', 'lkl', 'lkr', 'lkw', 'lpl', 'lpr', 'lpw', 'lql', 'lqr', 'lqw', 'ltl', 'ltr', 'ltw', 'lvl', 'lvr', 'lvw', 
				'mbl', 'mbr', 'mbw', 'mcl', 'mcr', 'mcw', 'mdl', 'mdr', 'mdw', 'mfl', 'mfr', 'mfw', 'mgl', 'mgr', 'mgw', 'mkl', 'mkr', 'mkw', 'mpl', 'mpr', 'mpw', 'mql', 'mqr', 'mqw', 'mtl', 'mtr', 'mtw', 'mvl', 'mvr', 'mvw', 
				'nbl', 'nbr', 'nbw', 'ncl', 'ncr', 'ncw', 'ndl', 'ndr', 'ndw', 'nfl', 'nfr', 'nfw', 'ngl', 'ngr', 'ngw', 'nkl', 'nkr', 'nkw', 'npl', 'npr', 'npw', 'nql', 'nqr', 'nqw', 'nth', 'ntl', 'ntr', 'ntw', 'nvl', 'nvr', 'nvw', 
				'pbl', 'pbr', 'pbw', 'pcl', 'pcr', 'pcw', 'pdl', 'pdr', 'pdw', 'pfl', 'pfr', 'pfw', 'pgl', 'pgr', 'pgw', 'pkl', 'pkr', 'pkw', 'ppl', 'pph', 'ppr', 'ppw', 'pql', 'pqr', 'pqw', 'ptl', 'ptr', 'ptw', 'pvl', 'pvr', 'pvw', 
				'qbl', 'qbr', 'qbw', 'qcl', 'qcr', 'qcw', 'qdl', 'qdr', 'qdw', 'qfl', 'qfr', 'qfw', 'qgl', 'qgr', 'qgw', 'qkl', 'qkr', 'qkw', 'qpl', 'qpr', 'qpw', 'qql', 'qqr', 'qqw', 'qtl', 'qtr', 'qtw', 'qvl', 'qvr', 'qvw', 
				'rbl', 'rbr', 'rbw', 'rcl', 'rcr', 'rcw', 'rdl', 'rdr', 'rdw', 'rfl', 'rfr', 'rfw', 'rgl', 'rgr', 'rgw', 'rkl', 'rkr', 'rkw', 'rpl', 'rpr', 'rps', 'rpw', 'rql', 'rqr', 'rqw', 'rrh', 'rtl', 'rtr', 'rtw', 'rvl', 'rvr', 'rvw', 
				'sbl', 'sbr', 'sbw', 'scl', 'scr', 'scw', 'sdl', 'sdr', 'sdw', 'sfl', 'sfr', 'sfw', 'sgl', 'sgr', 'sgw', 'skl', 'skr', 'skw', 'spl', 'spr', 'spw', 'sql', 'sqr', 'sqw', 'sth', 'stl', 'str', 'stw', 'svl', 'svr', 'svw', 
				'tbl', 'tbr', 'tbw', 'tcl', 'tch', 'tcr', 'tcw', 'tdl', 'tdr', 'tdw', 'tfl', 'tfr', 'tfw', 'tgl', 'tgr', 'tgw', 'tkl', 'tkr', 'tkw', 'tpl', 'tpr', 'tpw', 'tql', 'tqr', 'tqw', 'ttl', 'ttr', 'ttw', 'tvl', 'tvr', 'tvw', 
				'vbl', 'vbr', 'vbw', 'vcl', 'vcr', 'vcw', 'vdl', 'vdr', 'vdw', 'vfl', 'vfr', 'vfw', 'vgl', 'vgr', 'vgw', 'vkl', 'vkr', 'vkw', 'vpl', 'vpr', 'vpw', 'vql', 'vqr', 'vqw', 'vtl', 'vtr', 'vtw', 'vvl', 'vvr', 'vvw', 
				'wbl', 'wbr', 'wbw', 'wcl', 'wcr', 'wcw', 'wdl', 'wdr', 'wdw', 'wfl', 'wfr', 'wfw', 'wgl', 'wgr', 'wgw', 'wkl', 'wkr', 'wkw', 'wpl', 'wpr', 'wpw', 'wql', 'wqr', 'wqw', 'wtl', 'wtr', 'wtw', 'wvl', 'wvr', 'wvw', 
				'xbl', 'xbr', 'xbw', 'xcl', 'xcr', 'xcw', 'xdl', 'xdr', 'xdw', 'xfl', 'xfr', 'xfw', 'xgl', 'xgr', 'xgw', 'xkl', 'xkr', 'xkw', 'xpl', 'xpr', 'xpw', 'xql', 'xqr', 'xqw', 'xtl', 'xtr', 'xtw', 'xvl', 'xvr', 'xvw', 
				'ybl', 'ybr', 'ybw', 'ycl', 'ycr', 'ycw', 'ydl', 'ydr', 'ydw', 'yfl', 'yfr', 'yfw', 'ygl', 'ygr', 'ygw', 'ykl', 'ykr', 'ykw', 'ypl', 'ypr', 'ypw', 'yql', 'yqr', 'yqw', 'ytl', 'ytr', 'ytw', 'yvl', 'yvr', 'yvw', 
				'zbl', 'zbr', 'zbw', 'zcl', 'zcr', 'zcw', 'zdl', 'zdr', 'zdw', 'zfl', 'zfr', 'zfw', 'zgl', 'zgr', 'zgw', 'zkl', 'zkr', 'zkw', 'zpl', 'zpr', 'zpw', 'zql', 'zqr', 'zqw', 'ztl', 'ztr', 'ztw', 'zvl', 'zvr', 'zvw',
				'thr', 'str', 'spr', 'shr', 'skr', 'scr', 'sqr', 'spl', 'skw', 'scw', 'sqw', 'thw', 'sfr', 'shm', 'shn', 'chr', 'dgm', 'ght', 'rgh', 'ngh',
				'shkw', 'shcw', 'shqw', 'shpl', 'shtr', 'shtw', 'shkr', 'shcr', 'shqr']

var ends = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z',
			'bb', 'cc', 'dd', 'ff', 'gg', 'hh', 'jj', 'kk', 'll', 'mm', 'nn' ,'pp', 'qq', 'rr', 'ss', 'tt', 'vv', 'ww', 'xx', 'yy', 'zz',
			'bt', 'mb', 'ct', 'ch', 'ck', 'dh', 'ft', 'gn', 'gh', 'ld', 'lf', 'lk', 'lp', 'lt', 'nd', 'ng', 'nh', 'nk', 'nt', 'kh', 'mn', 'mp', 'ps', 'pt', 'rd', 'rt', 'sk', 'st', 'ts', 'ds', 'sh', 'xt', 'sm', 'sp', 'wl', 'wk', 'wc', 'wq',
			'nth', 'rgh', 'ght', 'cht', 'ngh', 'tch', 'rst', 'rth', 'wch', 'ngst', 'ngth']


func get_vowel():

	return vowels[random.randint(0, len(vowels) - 1)]


func get_c_start():

	return consonants['starts'][random.randint(0, len(consonants['starts']) - 1)]


func get_c_mid():

	return consonants['middles'][random.randint(0, len(consonants['middles']) - 1)]


func get_c_end():

	return consonants['ends'][random.randint(0, len(consonants['ends']) - 1)]


func jibberate():
	var jib = ""

	if random.randint(0, 1):
		#print("first vowel\n")
		jib += get_vowel()
		print(jib)
	jib += get_c_start()
	#print("c start\n")
	print(jib)
	#print("vowel root\n")
	jib += get_vowel()
	print(jib)
	
	if random.randint(0, 1):
		#print("not done,  add middle and vowel\n")
		jib += get_c_mid()
		jib += get_vowel()
		print(jib)
	
	if random.randint(0, 1):
		if random.randint(0, 1):
			jib += get_c_mid()
			jib += get_vowel()
		else:
			jib += get_c_end()


	return jib
