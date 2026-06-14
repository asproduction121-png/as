<html lang="ar" dir="rtl"><head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>بوابة الفريق | إدارة الوكالة</title>
<style>
:root{
  --bg-darkest:#0a0a0a;
  --bg-dark:#151515;
  --bg-card:#1c1c1c;
  --bg-card-hover:#242424;
  --red:#e1162b;
  --red-dark:#9c0f1f;
  --red-glow: rgba(225,22,43,0.35);
  --text-main:#f2f2f2;
  --text-dim:#9a9a9a;
  --border:#2c2c2c;
  --success:#3ddc84;
  --warn:#f5b942;
}
*{margin:0;padding:0;box-sizing:border-box;font-family:'Tahoma','Segoe UI',sans-serif;}
body{
  background:radial-gradient(circle at 20% 0%, #1a0306 0%, var(--bg-darkest) 55%);
  color:var(--text-main);
  min-height:100vh;
  background-attachment:fixed;
}
::-webkit-scrollbar{width:8px;}
::-webkit-scrollbar-thumb{background:var(--red-dark);border-radius:10px;}
::-webkit-scrollbar-track{background:var(--bg-dark);}

/* ===== Login Screen ===== */
.login-wrap{
  min-height:100vh;
  display:flex;
  align-items:center;
  justify-content:center;
  flex-direction:column;
  gap:24px;
  padding:20px;
}
.logo-block{
  display:flex;
  flex-direction:column;
  align-items:center;
  gap:10px;
  animation:fadeDown .6s ease;
}
.logo-mark{
  width:84px;height:84px;
  border-radius:18px;
  background:linear-gradient(145deg, var(--red), var(--red-dark));
  display:flex;align-items:center;justify-content:center;
  font-size:38px;font-weight:900;color:#fff;
  box-shadow:0 0 40px var(--red-glow), inset 0 0 20px rgba(255,255,255,0.15);
  position:relative;
  letter-spacing:-2px;
}
.logo-mark::after{
  content:'';
  position:absolute;inset:-3px;
  border-radius:21px;
  border:1px solid var(--red);
  opacity:.4;
}
.logo-title{font-size:26px;font-weight:800;letter-spacing:1px;}
.logo-sub{font-size:13px;color:var(--text-dim);letter-spacing:3px;text-transform:uppercase;}

.login-card{
  background:var(--bg-card);
  border:1px solid var(--border);
  border-radius:18px;
  padding:36px 32px;
  width:100%;
  max-width:380px;
  box-shadow:0 20px 60px rgba(0,0,0,.6);
  animation:fadeUp .6s ease;
}
.login-card h2{font-size:18px;margin-bottom:22px;text-align:center;color:var(--text-main);}
.field{margin-bottom:16px;}
.field label{display:block;font-size:13px;color:var(--text-dim);margin-bottom:6px;}
.field input{
  width:100%;
  padding:12px 14px;
  background:var(--bg-darkest);
  border:1px solid var(--border);
  border-radius:10px;
  color:var(--text-main);
  font-size:15px;
  transition:.2s;
}
.field input:focus{outline:none;border-color:var(--red);box-shadow:0 0 0 3px var(--red-glow);}
.btn{
  width:100%;
  padding:13px;
  border:none;
  border-radius:10px;
  background:linear-gradient(135deg, var(--red), var(--red-dark));
  color:#fff;
  font-size:15px;
  font-weight:700;
  cursor:pointer;
  transition:.2s;
  letter-spacing:.5px;
}
.btn:hover{filter:brightness(1.15);transform:translateY(-1px);box-shadow:0 6px 20px var(--red-glow);}
.btn-outline{
  background:transparent;
  border:1px solid var(--border);
  color:var(--text-dim);
}
.btn-outline:hover{border-color:var(--red);color:var(--text-main);box-shadow:none;}
.err-msg{
  color:var(--red);
  font-size:13px;
  text-align:center;
  margin-top:12px;
  min-height:18px;
}
.hint{
  text-align:center;
  font-size:12px;
  color:var(--text-dim);
  margin-top:18px;
  line-height:1.7;
}

@keyframes fadeDown{from{opacity:0;transform:translateY(-20px);}to{opacity:1;transform:translateY(0);}}
@keyframes fadeUp{from{opacity:0;transform:translateY(20px);}to{opacity:1;transform:translateY(0);}}

/* ===== App Layout ===== */
.app{display:none;min-height:100vh;}
.app.active{display:flex;}
.sidebar{
  width:240px;
  background:var(--bg-dark);
  border-left:1px solid var(--border);
  padding:24px 16px;
  display:flex;
  flex-direction:column;
  gap:6px;
  position:sticky;
  top:0;
  height:100vh;
  flex-shrink:0;
}
.side-logo{
  display:flex;align-items:center;gap:10px;
  margin-bottom:24px;padding:0 6px;
}
.side-logo .mark{
  width:42px;height:42px;border-radius:11px;
  background:linear-gradient(145deg, var(--red), var(--red-dark));
  display:flex;align-items:center;justify-content:center;
  font-weight:900;font-size:18px;color:#fff;
  box-shadow:0 0 18px var(--red-glow);
}
.side-logo .txt{font-size:16px;font-weight:800;}
.side-logo .txt small{display:block;font-size:11px;color:var(--text-dim);font-weight:400;}

.nav-item{
  display:flex;align-items:center;gap:12px;
  padding:12px 14px;
  border-radius:10px;
  color:var(--text-dim);
  cursor:pointer;
  font-size:14px;
  transition:.15s;
  border:1px solid transparent;
}
.nav-item:hover{background:var(--bg-card);color:var(--text-main);}
.nav-item.active{
  background:linear-gradient(135deg, rgba(225,22,43,.18), rgba(156,15,31,.05));
  color:var(--text-main);
  border-color:var(--red-dark);
  font-weight:700;
}
.nav-item .ic{font-size:17px;width:20px;text-align:center;}

.sidebar-footer{margin-top:auto;border-top:1px solid var(--border);padding-top:14px;}
.user-chip{
  display:flex;align-items:center;gap:10px;
  padding:10px;border-radius:10px;
  background:var(--bg-card);
  margin-bottom:8px;
}
.user-chip .av{
  width:36px;height:36px;border-radius:50%;
  background:linear-gradient(135deg,var(--red),var(--red-dark));
  display:flex;align-items:center;justify-content:center;
  font-weight:800;font-size:14px;flex-shrink:0;
}
.user-chip .info{overflow:hidden;}
.user-chip .info .nm{font-size:13px;font-weight:700;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
.user-chip .info .rl{font-size:11px;color:var(--red);}
.logout-btn{
  width:100%;padding:9px;border-radius:8px;
  background:var(--bg-card);border:1px solid var(--border);
  color:var(--text-dim);font-size:13px;cursor:pointer;
  transition:.15s;
}
.logout-btn:hover{border-color:var(--red);color:var(--red);}

/* ===== Main Content ===== */
.main{flex:1;padding:28px 32px;max-width:1100px;margin:0 auto;width:100%;}
.page{display:none;animation:fadeUp .35s ease;}
.page.active{display:block;}
.page-head{margin-bottom:24px;}
.page-head h1{font-size:24px;font-weight:800;margin-bottom:4px;}
.page-head p{color:var(--text-dim);font-size:13px;}

.card{
  background:var(--bg-card);
  border:1px solid var(--border);
  border-radius:14px;
  padding:20px;
  margin-bottom:16px;
}
.card-head{
  display:flex;justify-content:space-between;align-items:center;
  margin-bottom:14px;flex-wrap:wrap;gap:10px;
}
.card-head h3{font-size:16px;font-weight:700;}

/* Form grid */
.form-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px;margin-bottom:14px;}
.form-grid .full{grid-column:1/-1;}

/* Table */
table{width:100%;border-collapse:collapse;font-size:13px;}
th,td{padding:10px 12px;text-align:right;border-bottom:1px solid var(--border);}
th{color:var(--text-dim);font-weight:600;font-size:12px;text-transform:uppercase;letter-spacing:.5px;}
tr:last-child td{border-bottom:none;}
tr:hover td{background:rgba(225,22,43,0.04);}
.empty-row td{text-align:center;color:var(--text-dim);padding:24px;}

/* Tags / badges */
.tag{
  display:inline-block;padding:3px 10px;border-radius:20px;
  font-size:11px;font-weight:700;
}
.tag-owner{background:rgba(225,22,43,.18);color:#ff5d6c;border:1px solid var(--red-dark);}
.tag-coowner{background:rgba(245,185,66,.15);color:var(--warn);border:1px solid #6b5117;}
.tag-employee{background:rgba(255,255,255,.06);color:var(--text-dim);border:1px solid var(--border);}

.icon-btn{
  background:transparent;border:1px solid var(--border);
  color:var(--text-dim);border-radius:8px;
  padding:6px 10px;cursor:pointer;font-size:12px;
  transition:.15s;
}
.icon-btn:hover{border-color:var(--red);color:var(--red);}
.icon-btn.danger:hover{border-color:#ff4444;color:#ff4444;}

.small-btn{
  padding:8px 16px;border-radius:8px;border:none;
  background:linear-gradient(135deg, var(--red), var(--red-dark));
  color:#fff;font-size:13px;font-weight:700;cursor:pointer;transition:.15s;
}
.small-btn:hover{filter:brightness(1.15);}
.small-btn.secondary{background:var(--bg-darkest);border:1px solid var(--border);color:var(--text-main);}
.small-btn.secondary:hover{border-color:var(--red);}

.note{color:var(--text-dim);font-size:12px;margin-top:6px;}

.locked-banner{
  background:var(--bg-card);
  border:1px dashed var(--border);
  border-radius:14px;
  padding:40px;
  text-align:center;
  color:var(--text-dim);
}
.locked-banner .ic{font-size:40px;display:block;margin-bottom:10px;}

select{
  width:100%;padding:11px 12px;background:var(--bg-darkest);
  border:1px solid var(--border);border-radius:10px;color:var(--text-main);font-size:14px;
}
input[type=number]{width:100%;}

@media(max-width:800px){
  .app.active{flex-direction:column;}
  .sidebar{width:100%;height:auto;position:relative;flex-direction:row;overflow-x:auto;padding:14px;}
  .side-logo{display:none;}
  .sidebar-footer{display:none;}
  .nav-item{flex-direction:column;gap:4px;font-size:11px;white-space:nowrap;padding:8px 12px;}
  .main{padding:18px;}
}
</style>
</head>
<body>

<!-- ============ LOGIN ============ -->
<div class="login-wrap" id="loginScreen" style="display: flex;">
  <div class="logo-block">
    <div class="logo-mark">SM</div>
    <div class="logo-title">بوابة فريق السوشيال ميديا</div>
    <div class="logo-sub">Internal Staff Portal</div>
  </div>
  <div class="login-card">
    <h2>تسجيل الدخول</h2>
    <div class="field">
      <label>اسم المستخدم</label>
      <input type="text" id="loginUser" placeholder="ادخل اسم المستخدم" autocomplete="off">
    </div>
    <div class="field">
      <label>الرمز السري</label>
      <input type="password" id="loginPass" placeholder="ادخل الرمز السري" autocomplete="off">
    </div>
    <button class="btn" onclick="attemptLogin()">دخول</button>
    <div class="err-msg" id="loginErr">اسم المستخدم أو الرمز السري غير صحيح</div>
  </div>
</div>

<!-- ============ APP ============ -->
<div class="app" id="appScreen">
  <div class="sidebar">
    <div class="side-logo">
      <div class="mark">SM</div>
      <div class="txt">فريق العمل<small>Agency Portal</small></div>
    </div>

    <div class="nav-item active" data-page="dashboard"><span class="ic">🏠</span> الرئيسية</div>
    <div class="nav-item" data-page="shooting"><span class="ic">🎥</span> مهام التصوير</div>
    <div class="nav-item" data-page="editing"><span class="ic">✂️</span> قائمة المونتاج</div>
    <div class="nav-item" data-page="design"><span class="ic">🎨</span> قائمة الديزاينر</div>
    <div class="nav-item" data-page="reports"><span class="ic">⚠️</span> التبليغات</div>
    <div class="nav-item" data-page="deductions"><span class="ic">💰</span> الخصومات</div>
    <div class="nav-item" data-page="shifts"><span class="ic">🕒</span> أوقات الدوام</div>
    <div class="nav-item" data-page="staff" id="staffNav" style="display: flex;"><span class="ic">👥</span> إدارة الموظفين</div>

    <div class="sidebar-footer">
      <div class="user-chip">
        <div class="av" id="avatarLetter">A</div>
        <div class="info">
          <div class="nm" id="currentUserName">Ahmed Sadoon</div>
          <div class="rl" id="currentUserRole">👑 المالك (Owner)</div>
        </div>
      </div>
      <button class="logout-btn" onclick="logout()">تسجيل الخروج 🚪</button>
    </div>
  </div>

  <div class="main">

    <!-- DASHBOARD -->
    <div class="page active" id="page-dashboard">
      <div class="page-head">
        <h1>مرحباً <span id="welcomeName">Ahmed Sadoon</span> 👋</h1>
        <p>نظرة سريعة على نشاط اليوم في الوكالة</p>
      </div>
      <div class="card-head" style="display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:14px;margin-bottom:0;">
        <div class="card" style="text-align:center;margin-bottom:0;">
          <div style="font-size:28px;font-weight:800;color:var(--red);" id="statShoot">1</div>
          <div class="note">مهام تصوير</div>
        </div>
        <div class="card" style="text-align:center;margin-bottom:0;">
          <div style="font-size:28px;font-weight:800;color:var(--red);" id="statEdit">1</div>
          <div class="note">مهام مونتاج</div>
        </div>
        <div class="card" style="text-align:center;margin-bottom:0;">
          <div style="font-size:28px;font-weight:800;color:var(--red);" id="statDesign">0</div>
          <div class="note">مهام ديزاين</div>
        </div>
        <div class="card" style="text-align:center;margin-bottom:0;">
          <div style="font-size:28px;font-weight:800;color:var(--red);" id="statReports">0</div>
          <div class="note">تبليغات نشطة</div>
        </div>
      </div>
      <div class="card" style="margin-top:16px;">
        <div class="card-head"><h3>صلاحياتك الحالية</h3></div>
        <p class="note" id="permissionsText">لديك صلاحية كاملة: التحكم في كل القوائم، إدارة حسابات الموظفين، وتعيين الرتب (بما فيها Co-Owner).</p>
      </div>
    </div>

    <!-- SHOOTING TASKS -->
    <div class="page" id="page-shooting">
      <div class="page-head"><h1>🎥 مهام التصوير</h1><p>جدولة جلسات التصوير: الوقت، الموقع، اسم العميل</p></div>
      <div class="card" id="shootingForm" style="display: block;">
        <div class="card-head"><h3>إضافة مهمة تصوير جديدة</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم العميل</label><input type="text" id="sh_client" placeholder="اسم العميل"></div>
          <div><label class="note">الموقع</label><input type="text" id="sh_location" placeholder="موقع التصوير"></div>
          <div><label class="note">التاريخ</label><input type="date" id="sh_date"></div>
          <div><label class="note">الوقت</label><input type="time" id="sh_time"></div>
          <div><label class="note">المصور المسؤول</label><input type="text" id="sh_assignee" placeholder="اسم المصور"></div>
          <div><label class="note">ملاحظات</label><input type="text" id="sh_notes" placeholder="ملاحظات إضافية"></div>
        </div>
        <button class="small-btn" onclick="addItem('shooting')">➕ إضافة المهمة</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>المهام المجدولة</h3></div>
        <table>
          <thead><tr><th>العميل</th><th>الموقع</th><th>التاريخ</th><th>الوقت</th><th>المسؤول</th><th>ملاحظات</th><th></th></tr></thead>
          <tbody id="shootingTable"><tr>
    <td>جبل بلاست</td><td>بكمب سارة</td>
    <td>2026-06-15</td><td></td>
    <td>عثمان</td><td></td>
    <td><button class="icon-btn danger del-btn" onclick="deleteItem('shooting','178144293387114a954b14df248', this)" style="display: inline-block;">حذف 🗑️</button></td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- EDITING -->
    <div class="page" id="page-editing">
      <div class="page-head"><h1>✂️ قائمة المونتاج</h1><p>متابعة أعمال المونتاج وحالتها</p></div>
      <div class="card" id="editingForm" style="display: block;">
        <div class="card-head"><h3>إضافة مهمة مونتاج</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم المشروع / العميل</label><input type="text" id="ed_project" placeholder="اسم المشروع"></div>
          <div><label class="note">المسؤول</label><input type="text" id="ed_assignee" placeholder="اسم المونتير"></div>
          <div><label class="note">الموعد النهائي</label><input type="date" id="ed_deadline"></div>
          <div>
            <label class="note">الحالة</label>
            <select id="ed_status"><option>قيد الانتظار</option><option>قيد التنفيذ</option><option>مكتمل</option><option>تحتاج تعديل</option></select>
          </div>
          <div class="full"><label class="note">ملاحظات</label><input type="text" id="ed_notes" placeholder="تفاصيل المونتاج"></div>
        </div>
        <button class="small-btn" onclick="addItem('editing')">➕ إضافة المهمة</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>قائمة أعمال المونتاج</h3></div>
        <table>
          <thead><tr><th>المشروع</th><th>المسؤول</th><th>الموعد</th><th>الحالة</th><th>ملاحظات</th><th></th></tr></thead>
          <tbody id="editingTable"><tr>
    <td>اوبر</td><td>ميتو</td>
    <td></td><td><span class="tag" style="background:rgba(225,22,43,.15);color:#ff5d6c;border:1px solid var(--red-dark)">تحتاج تعديل</span></td>
    <td>تعديل على المبردة</td><td><button class="icon-btn danger del-btn" onclick="deleteItem('editing','17814430255346d64cecc70bd98', this)" style="display: inline-block;">حذف 🗑️</button></td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- DESIGN -->
    <div class="page" id="page-design">
      <div class="page-head"><h1>🎨 قائمة الديزاينر</h1><p>متابعة طلبات التصميم وحالتها</p></div>
      <div class="card" id="designForm" style="display: block;">
        <div class="card-head"><h3>إضافة طلب تصميم</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم المشروع / العميل</label><input type="text" id="dz_project" placeholder="اسم المشروع"></div>
          <div><label class="note">المصمم المسؤول</label><input type="text" id="dz_assignee" placeholder="اسم المصمم"></div>
          <div><label class="note">الموعد النهائي</label><input type="date" id="dz_deadline"></div>
          <div>
            <label class="note">الحالة</label>
            <select id="dz_status"><option>قيد الانتظار</option><option>قيد التنفيذ</option><option>مكتمل</option><option>تحتاج تعديل</option></select>
          </div>
          <div class="full"><label class="note">وصف التصميم</label><input type="text" id="dz_notes" placeholder="تفاصيل ومواصفات التصميم"></div>
        </div>
        <button class="small-btn" onclick="addItem('design')">➕ إضافة الطلب</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>طلبات التصميم</h3></div>
        <table>
          <thead><tr><th>المشروع</th><th>المصمم</th><th>الموعد</th><th>الحالة</th><th>التفاصيل</th><th></th></tr></thead>
          <tbody id="designTable"><tr class="empty-row"><td colspan="6">لا توجد عناصر حتى الآن</td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- REPORTS -->
    <div class="page" id="page-reports">
      <div class="page-head"><h1>⚠️ التبليغات</h1><p>تبليغات وملاحظات عن مشاكل أو طلبات عاجلة</p></div>
      <div class="card" id="reportsForm" style="display: block;">
        <div class="card-head"><h3>إضافة تبليغ جديد</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم الموظف المُبلِّغ</label><input type="text" id="rp_from" placeholder="اسمك"></div>
          <div>
            <label class="note">نوع التبليغ</label>
            <select id="rp_type"><option>مشكلة فنية</option><option>تأخير</option><option>طلب دعم</option><option>شكوى</option><option>أخرى</option></select>
          </div>
          <div class="full"><label class="note">تفاصيل التبليغ</label><input type="text" id="rp_notes" placeholder="اكتب تفاصيل التبليغ هنا"></div>
        </div>
        <button class="small-btn" onclick="addItem('reports')">➕ إرسال التبليغ</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>سجل التبليغات</h3></div>
        <table>
          <thead><tr><th>الموظف</th><th>النوع</th><th>التفاصيل</th><th>التاريخ</th><th></th></tr></thead>
          <tbody id="reportsTable"><tr class="empty-row"><td colspan="5">لا توجد عناصر حتى الآن</td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- DEDUCTIONS -->
    <div class="page" id="page-deductions">
      <div class="page-head"><h1>💰 الخصومات</h1><p>سجل خصومات الموظفين من الراتب</p></div>
      <div class="card" id="deductionsForm" style="display: block;">
        <div class="card-head"><h3>إضافة خصم</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم الموظف</label><input type="text" id="dd_name" placeholder="اسم الموظف"></div>
          <div><label class="note">قيمة الخصم</label><input type="number" id="dd_amount" placeholder="0"></div>
          <div><label class="note">تاريخ الخصم</label><input type="date" id="dd_date"></div>
          <div class="full"><label class="note">سبب الخصم</label><input type="text" id="dd_reason" placeholder="سبب الخصم"></div>
        </div>
        <button class="small-btn" onclick="addItem('deductions')">➕ إضافة الخصم</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>سجل الخصومات</h3></div>
        <table>
          <thead><tr><th>الموظف</th><th>القيمة</th><th>السبب</th><th>التاريخ</th><th></th></tr></thead>
          <tbody id="deductionsTable"><tr class="empty-row"><td colspan="5">لا توجد عناصر حتى الآن</td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- SHIFTS -->
    <div class="page" id="page-shifts">
      <div class="page-head"><h1>🕒 أوقات الدوام</h1><p>جدول دوام الموظفين الأسبوعي</p></div>
      <div class="card" id="shiftsForm" style="display: block;">
        <div class="card-head"><h3>إضافة دوام</h3></div>
        <div class="form-grid">
          <div><label class="note">اسم الموظف</label><input type="text" id="sf_name" placeholder="اسم الموظف"></div>
          <div>
            <label class="note">اليوم</label>
            <select id="sf_day"><option>السبت</option><option>الأحد</option><option>الإثنين</option><option>الثلاثاء</option><option>الأربعاء</option><option>الخميس</option><option>الجمعة</option></select>
          </div>
          <div><label class="note">من الساعة</label><input type="time" id="sf_from"></div>
          <div><label class="note">إلى الساعة</label><input type="time" id="sf_to"></div>
        </div>
        <button class="small-btn" onclick="addItem('shifts')">➕ إضافة الدوام</button>
      </div>
      <div class="card">
        <div class="card-head"><h3>جدول الدوام</h3></div>
        <table>
          <thead><tr><th>الموظف</th><th>اليوم</th><th>من</th><th>إلى</th><th></th></tr></thead>
          <tbody id="shiftsTable"><tr class="empty-row"><td colspan="5">لا توجد عناصر حتى الآن</td></tr></tbody>
        </table>
      </div>
    </div>

    <!-- STAFF MANAGEMENT (Owner / Co-Owner only) -->
    <div class="page" id="page-staff">
      <div class="page-head"><h1>👥 إدارة الموظفين</h1><p>إنشاء حسابات الموظفين وتحديد رتبهم</p></div>
      <div id="staffContent">
  <div class="card">
    <div class="card-head"><h3>إنشاء حساب موظف جديد</h3></div>
    <div class="form-grid">
      <div><label class="note">الاسم الكامل</label><input type="text" id="ns_name" placeholder="اسم الموظف"></div>
      <div><label class="note">اسم المستخدم</label><input type="text" id="ns_user" placeholder="username"></div>
      <div><label class="note">الرمز السري</label><input type="text" id="ns_pass" placeholder="password"></div>
      <div>
        <label class="note">الرتبة</label>
        <select id="ns_role">
          <option value="employee">موظف (مشاهدة وإضافة فقط)</option>
          <option value="coowner">شريك مالك (Co-Owner — صلاحيات كاملة)</option>
        </select>
      </div>
    </div>
    <button class="small-btn" onclick="createStaff()">➕ إنشاء الحساب</button>
    <p class="note" style="margin-top:10px;">بصفتك المالك، يمكنك إنشاء حسابات بصلاحية "شريك مالك" مساوية لصلاحياتك.</p>
  </div>
  <div class="card">
    <div class="card-head"><h3>👥 الموظفون المسجّلون (2)</h3></div>
    <table>
      <thead><tr><th>الاسم</th><th>اسم المستخدم</th><th>الرتبة</th><th>إجراءات</th></tr></thead>
      <tbody><tr>
      <td>Ahmed Sadoon</td>
      <td>ahmed sadoon</td>
      <td><span class="tag tag-owner">المالك</span></td>
      <td>
        -
        
      </td>
    </tr><tr>
      <td>عثمان</td>
      <td>oth</td>
      <td><span class="tag tag-employee">موظف</span></td>
      <td>
        <button class="icon-btn" onclick="changeRole('oth','coowner')">⬆️ ترقية إلى شريك مالك</button>
        <button class="icon-btn danger" onclick="deleteStaff('oth', this)">حذف 🗑️</button>
      </td>
    </tr></tbody>
    </table>
  </div></div>
    </div>

  </div>
</div>

<script>
/* =========================================================
   DATA LAYER (localStorage-based, persists in this browser)
   ========================================================= */
const DB_KEY = 'agency_portal_db_v1';

function defaultDB(){
  return {
    users: [
      // owner default account
      { username:'ahmed sadoon', password:'ahmed sadoon as', name:'Ahmed Sadoon', role:'owner' }
    ],
    shooting: [],
    editing: [],
    design: [],
    reports: [],
    deductions: [],
    shifts: []
  };
}

function loadDB(){
  let raw = localStorage.getItem(DB_KEY);
  if(!raw){
    const db = defaultDB();
    localStorage.setItem(DB_KEY, JSON.stringify(db));
    return db;
  }
  try{ return JSON.parse(raw); }catch(e){ return defaultDB(); }
}
function saveDB(db){ localStorage.setItem(DB_KEY, JSON.stringify(db)); }

let DB = loadDB();
let currentUser = null;

/* =========================================================
   AUTH
   ========================================================= */
function attemptLogin(){
  const u = document.getElementById('loginUser').value.trim();
  const p = document.getElementById('loginPass').value;
  const errEl = document.getElementById('loginErr');

  const found = DB.users.find(x => x.username.toLowerCase() === u.toLowerCase() && x.password === p);
  if(!found){
    errEl.textContent = 'اسم المستخدم أو الرمز السري غير صحيح';
    return;
  }
  errEl.textContent = '';
  currentUser = found;
  sessionStorage.setItem('agency_current_user', JSON.stringify(found));
  enterApp();
}

function logout(){
  currentUser = null;
  sessionStorage.removeItem('agency_current_user');
  document.getElementById('appScreen').classList.remove('active');
  document.getElementById('loginScreen').style.display = 'flex';
  document.getElementById('loginUser').value = '';
  document.getElementById('loginPass').value = '';
}

function enterApp(){
  document.getElementById('loginScreen').style.display = 'none';
  document.getElementById('appScreen').classList.add('active');

  document.getElementById('currentUserName').textContent = currentUser.name || currentUser.username;
  document.getElementById('welcomeName').textContent = currentUser.name || currentUser.username;
  document.getElementById('avatarLetter').textContent = (currentUser.name || currentUser.username).charAt(0).toUpperCase();

  const roleLabels = { owner:'👑 المالك (Owner)', coowner:'⭐ شريك (Co-Owner)', employee:'👤 موظف' };
  document.getElementById('currentUserRole').textContent = roleLabels[currentUser.role] || currentUser.role;

  // Staff nav visibility
  const canManageStaff = (currentUser.role === 'owner' || currentUser.role === 'coowner');
  document.getElementById('staffNav').style.display = canManageStaff ? 'flex' : 'none';

  // permissions text
  let permText = '';
  if(currentUser.role === 'owner'){
    permText = 'لديك صلاحية كاملة: التحكم في كل القوائم، إدارة حسابات الموظفين، وتعيين الرتب (بما فيها Co-Owner).';
  } else if(currentUser.role === 'coowner'){
    permText = 'لديك صلاحيات شريك مالك: التحكم في كل القوائم، وإدارة حسابات الموظفين (مثل المالك).';
  } else {
    permText = 'صلاحيتك: مشاهدة فقط. لا يمكنك إضافة أو حذف أو تعديل أي بيانات، ولا الوصول لإدارة الموظفين.';
  }
  document.getElementById('permissionsText').textContent = permText;

  renderAll();
  applyRoleRestrictions();
}

function applyRoleRestrictions(){
  const isManager = (currentUser.role === 'owner' || currentUser.role === 'coowner');
  // delete buttons only for managers
  document.querySelectorAll('.del-btn').forEach(btn=>{
    btn.style.display = isManager ? 'inline-block' : 'none';
  });
  // add/edit forms only for managers — employees are view-only
  const formIds = ['shootingForm','editingForm','designForm','reportsForm','deductionsForm','shiftsForm'];
  formIds.forEach(id=>{
    const el = document.getElementById(id);
    if(el) el.style.display = isManager ? 'block' : 'none';
  });
}

/* =========================================================
   NAVIGATION
   ========================================================= */
document.querySelectorAll('.nav-item').forEach(item=>{
  item.addEventListener('click', ()=>{
    if(item.dataset.page === 'staff' && !(currentUser.role==='owner'||currentUser.role==='coowner')) return;
    document.querySelectorAll('.nav-item').forEach(i=>i.classList.remove('active'));
    document.querySelectorAll('.page').forEach(p=>p.classList.remove('active'));
    item.classList.add('active');
    document.getElementById('page-'+item.dataset.page).classList.add('active');
    if(item.dataset.page === 'staff') renderStaffPage();
  });
});

/* =========================================================
   GENERIC ADD / DELETE
   ========================================================= */
function addItem(type){
  if(!(currentUser.role==='owner'||currentUser.role==='coowner')){
    alert('صلاحيتك مشاهدة فقط، لا يمكنك إضافة عناصر.');
    return;
  }
  let entry = {};
  switch(type){
    case 'shooting':
      entry = {
        client: val('sh_client'), location: val('sh_location'),
        date: val('sh_date'), time: val('sh_time'),
        assignee: val('sh_assignee'), notes: val('sh_notes')
      };
      if(!entry.client){ alert('اكتب اسم العميل على الأقل'); return; }
      clearFields(['sh_client','sh_location','sh_date','sh_time','sh_assignee','sh_notes']);
      break;
    case 'editing':
      entry = {
        project: val('ed_project'), assignee: val('ed_assignee'),
        deadline: val('ed_deadline'), status: val('ed_status'), notes: val('ed_notes')
      };
      if(!entry.project){ alert('اكتب اسم المشروع'); return; }
      clearFields(['ed_project','ed_assignee','ed_deadline','ed_notes']);
      break;
    case 'design':
      entry = {
        project: val('dz_project'), assignee: val('dz_assignee'),
        deadline: val('dz_deadline'), status: val('dz_status'), notes: val('dz_notes')
      };
      if(!entry.project){ alert('اكتب اسم المشروع'); return; }
      clearFields(['dz_project','dz_assignee','dz_deadline','dz_notes']);
      break;
    case 'reports':
      entry = {
        from: val('rp_from') || (currentUser.name||currentUser.username),
        type: val('rp_type'), notes: val('rp_notes'),
        date: new Date().toLocaleDateString('ar-EG')
      };
      if(!entry.notes){ alert('اكتب تفاصيل التبليغ'); return; }
      clearFields(['rp_from','rp_notes']);
      break;
    case 'deductions':
      entry = {
        name: val('dd_name'), amount: val('dd_amount'),
        date: val('dd_date'), reason: val('dd_reason')
      };
      if(!entry.name || !entry.amount){ alert('اكتب اسم الموظف وقيمة الخصم'); return; }
      clearFields(['dd_name','dd_amount','dd_date','dd_reason']);
      break;
    case 'shifts':
      entry = {
        name: val('sf_name'), day: val('sf_day'),
        from: val('sf_from'), to: val('sf_to')
      };
      if(!entry.name){ alert('اكتب اسم الموظف'); return; }
      clearFields(['sf_name','sf_from','sf_to']);
      break;
  }
  entry.id = Date.now() + Math.random().toString(16).slice(2);
  DB[type].push(entry);
  saveDB(DB);
  renderAll();
  applyRoleRestrictions();
}

function deleteItem(type, id, btnEl){
  if(!(currentUser.role==='owner'||currentUser.role==='coowner')) return;

  if(btnEl && btnEl.dataset.confirm !== '1'){
    btnEl.dataset.confirm = '1';
    btnEl.textContent = '⚠️ تأكيد';
    btnEl.style.background = '#ff4444';
    btnEl.style.color = '#fff';
    setTimeout(()=>{
      if(btnEl && btnEl.dataset.confirm === '1'){
        btnEl.dataset.confirm = '0';
        btnEl.textContent = 'حذف 🗑️';
        btnEl.style.background = '';
        btnEl.style.color = '';
      }
    }, 3000);
    return;
  }

  DB[type] = DB[type].filter(x=>x.id !== id);
  saveDB(DB);
  renderAll();
  applyRoleRestrictions();
  showToast('تم الحذف 🗑️');
}

function val(id){ return document.getElementById(id).value; }
function clearFields(ids){ ids.forEach(id=>document.getElementById(id).value=''); }

/* =========================================================
   RENDER TABLES
   ========================================================= */
function renderAll(){
  // shooting
  renderTable('shootingTable', DB.shooting, item => `
    <td>${esc(item.client)}</td><td>${esc(item.location)}</td>
    <td>${esc(item.date)}</td><td>${esc(item.time)}</td>
    <td>${esc(item.assignee)}</td><td>${esc(item.notes)}</td>
    <td>${delBtn('shooting', item.id)}</td>`, 7);

  // editing
  renderTable('editingTable', DB.editing, item => `
    <td>${esc(item.project)}</td><td>${esc(item.assignee)}</td>
    <td>${esc(item.deadline)}</td><td>${statusTag(item.status)}</td>
    <td>${esc(item.notes)}</td><td>${delBtn('editing', item.id)}</td>`, 6);

  // design
  renderTable('designTable', DB.design, item => `
    <td>${esc(item.project)}</td><td>${esc(item.assignee)}</td>
    <td>${esc(item.deadline)}</td><td>${statusTag(item.status)}</td>
    <td>${esc(item.notes)}</td><td>${delBtn('design', item.id)}</td>`, 6);

  // reports
  renderTable('reportsTable', DB.reports, item => `
    <td>${esc(item.from)}</td><td>${esc(item.type)}</td>
    <td>${esc(item.notes)}</td><td>${esc(item.date)}</td>
    <td>${delBtn('reports', item.id)}</td>`, 5);

  // deductions
  renderTable('deductionsTable', DB.deductions, item => `
    <td>${esc(item.name)}</td><td style="color:var(--red);font-weight:700">${esc(item.amount)}</td>
    <td>${esc(item.reason)}</td><td>${esc(item.date)}</td>
    <td>${delBtn('deductions', item.id)}</td>`, 5);

  // shifts
  renderTable('shiftsTable', DB.shifts, item => `
    <td>${esc(item.name)}</td><td>${esc(item.day)}</td>
    <td>${esc(item.from)}</td><td>${esc(item.to)}</td>
    <td>${delBtn('shifts', item.id)}</td>`, 5);

  // dashboard stats
  document.getElementById('statShoot').textContent = DB.shooting.length;
  document.getElementById('statEdit').textContent = DB.editing.length;
  document.getElementById('statDesign').textContent = DB.design.length;
  document.getElementById('statReports').textContent = DB.reports.length;
}

function renderTable(tbodyId, arr, rowFn, colspan){
  const tbody = document.getElementById(tbodyId);
  if(arr.length === 0){
    tbody.innerHTML = `<tr class="empty-row"><td colspan="${colspan}">لا توجد عناصر حتى الآن</td></tr>`;
    return;
  }
  tbody.innerHTML = arr.map(item => `<tr>${rowFn(item)}</tr>`).join('');
}

function delBtn(type, id){
  return `<button class="icon-btn danger del-btn" onclick="deleteItem('${type}','${id}', this)">حذف 🗑️</button>`;
}
function statusTag(status){
  const map = { 'مكتمل':'background:rgba(61,220,132,.15);color:var(--success);border:1px solid #1d4d33',
                'قيد التنفيذ':'background:rgba(245,185,66,.15);color:var(--warn);border:1px solid #6b5117',
                'تحتاج تعديل':'background:rgba(225,22,43,.15);color:#ff5d6c;border:1px solid var(--red-dark)',
                'قيد الانتظار':'background:rgba(255,255,255,.06);color:var(--text-dim);border:1px solid var(--border)'};
  const style = map[status] || map['قيد الانتظار'];
  return `<span class="tag" style="${style}">${esc(status||'')}</span>`;
}
function esc(s){
  if(s===undefined||s===null) return '';
  return String(s).replace(/[&<>"']/g, c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
}

/* =========================================================
   STAFF MANAGEMENT PAGE (Owner / Co-Owner)
   ========================================================= */
function renderStaffPage(){
  const isOwner = currentUser.role === 'owner';
  const container = document.getElementById('staffContent');

  let formHtml = `
  <div class="card">
    <div class="card-head"><h3>إنشاء حساب موظف جديد</h3></div>
    <div class="form-grid">
      <div><label class="note">الاسم الكامل</label><input type="text" id="ns_name" placeholder="اسم الموظف"></div>
      <div><label class="note">اسم المستخدم</label><input type="text" id="ns_user" placeholder="username"></div>
      <div><label class="note">الرمز السري</label><input type="text" id="ns_pass" placeholder="password"></div>
      <div>
        <label class="note">الرتبة</label>
        <select id="ns_role">
          <option value="employee">موظف (مشاهدة وإضافة فقط)</option>
          ${isOwner ? '<option value="coowner">شريك مالك (Co-Owner — صلاحيات كاملة)</option>' : ''}
        </select>
      </div>
    </div>
    <button class="small-btn" onclick="createStaff()">➕ إنشاء الحساب</button>
    <p class="note" style="margin-top:10px;">${isOwner ? 'بصفتك المالك، يمكنك إنشاء حسابات بصلاحية "شريك مالك" مساوية لصلاحياتك.' : 'يمكنك إنشاء حسابات موظفين عاديين فقط.'}</p>
  </div>`;

  let rows = DB.users.map(u=>{
    let tag = u.role==='owner' ? '<span class="tag tag-owner">المالك</span>'
            : u.role==='coowner' ? '<span class="tag tag-coowner">شريك مالك</span>'
            : '<span class="tag tag-employee">موظف</span>';
    let canDelete = isOwner && u.role !== 'owner' && u.username !== currentUser.username;
    let canManageRole = isOwner && u.role !== 'owner';

    let roleAction = '';
    if(canManageRole){
      if(u.role === 'coowner'){
        roleAction = `<button class="icon-btn" onclick="changeRole('${u.username}','employee')">⬇️ تخفيض إلى موظف</button>`;
      } else {
        roleAction = `<button class="icon-btn" onclick="changeRole('${u.username}','coowner')">⬆️ ترقية إلى شريك مالك</button>`;
      }
    }

    return `<tr>
      <td>${esc(u.name||u.username)}</td>
      <td>${esc(u.username)}</td>
      <td>${tag}</td>
      <td>
        ${roleAction || '-'}
        ${canDelete ? `<button class="icon-btn danger" onclick="deleteStaff('${u.username}', this)">حذف 🗑️</button>` : ''}
      </td>
    </tr>`;
  }).join('');

  let listHtml = `
  <div class="card">
    <div class="card-head"><h3>👥 الموظفون المسجّلون (${DB.users.length})</h3></div>
    <table>
      <thead><tr><th>الاسم</th><th>اسم المستخدم</th><th>الرتبة</th><th>إجراءات</th></tr></thead>
      <tbody>${rows}</tbody>
    </table>
  </div>`;

  container.innerHTML = formHtml + listHtml;
}

function createStaff(){
  const name = val('ns_name').trim();
  const username = val('ns_user').trim();
  const password = val('ns_pass');
  const role = val('ns_role');

  if(!name || !username || !password){ alert('يرجى تعبئة جميع الحقول'); return; }
  if(DB.users.some(u=>u.username.toLowerCase()===username.toLowerCase())){ alert('اسم المستخدم موجود مسبقاً'); return; }

  if(role==='coowner' && currentUser.role!=='owner'){ alert('فقط المالك يمكنه إنشاء حساب شريك مالك'); return; }

  DB.users.push({ username, password, name, role });
  saveDB(DB);
  clearFields(['ns_name','ns_user','ns_pass']);
  renderStaffPage();
}

function changeRole(username, newRole){
  if(currentUser.role !== 'owner'){ alert('فقط المالك يمكنه تغيير الرتب'); return; }
  const u = DB.users.find(x=>x.username===username);
  if(!u){ alert('خطأ: المستخدم غير موجود'); return; }
  if(u.role==='owner'){ alert('لا يمكن تغيير رتبة المالك'); return; }
  u.role = newRole;
  saveDB(DB);
  renderStaffPage();
  const msg = newRole==='coowner' ? 'تمت الترقية إلى شريك مالك ✅' : 'تم التخفيض إلى موظف ✅';
  showToast(msg);
}

function deleteStaff(username, btnEl){
  if(currentUser.role !== 'owner'){ alert('فقط المالك يمكنه حذف الحسابات'); return; }
  const u = DB.users.find(x=>x.username===username);
  if(!u){ alert('خطأ: المستخدم غير موجود'); return; }
  if(u.role==='owner'){ alert('لا يمكن حذف حساب المالك'); return; }

  if(btnEl && btnEl.dataset.confirm !== '1'){
    btnEl.dataset.confirm = '1';
    btnEl.textContent = '⚠️ اضغط للتأكيد';
    btnEl.style.background = '#ff4444';
    btnEl.style.color = '#fff';
    setTimeout(()=>{
      if(btnEl.dataset.confirm === '1'){
        btnEl.dataset.confirm = '0';
        btnEl.textContent = 'حذف 🗑️';
        btnEl.style.background = '';
        btnEl.style.color = '';
      }
    }, 3000);
    return;
  }

  DB.users = DB.users.filter(x=>x.username!==username);
  saveDB(DB);
  renderStaffPage();
  showToast('تم حذف الحساب 🗑️');
}

function showToast(msg){
  let t = document.getElementById('appToast');
  if(!t){
    t = document.createElement('div');
    t.id = 'appToast';
    t.style.position='fixed';
    t.style.bottom='24px';
    t.style.left='50%';
    t.style.transform='translateX(-50%)';
    t.style.background='var(--bg-card)';
    t.style.border='1px solid var(--red)';
    t.style.color='var(--text-main)';
    t.style.padding='12px 22px';
    t.style.borderRadius='10px';
    t.style.fontSize='14px';
    t.style.zIndex='9999';
    t.style.boxShadow='0 8px 24px rgba(225,22,43,.3)';
    t.style.transition='opacity .3s';
    document.body.appendChild(t);
  }
  t.textContent = msg;
  t.style.opacity = '1';
  clearTimeout(t._hideTimer);
  t._hideTimer = setTimeout(()=>{ t.style.opacity = '0'; }, 2200);
}

/* =========================================================
   INIT — auto re-login from session
   ========================================================= */
(function init(){
  const saved = sessionStorage.getItem('agency_current_user');
  if(saved){
    try{
      const u = JSON.parse(saved);
      // re-validate user still exists
      const fresh = DB.users.find(x=>x.username===u.username);
      if(fresh){ currentUser = fresh; enterApp(); }
    }catch(e){}
  }
})();
</script>


</body></html>
