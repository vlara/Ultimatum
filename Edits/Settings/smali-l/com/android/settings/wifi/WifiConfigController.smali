.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final WAPI_PSK_TYPE_VALUES:[I


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasWapiAsCert:Z

.field private mHasWapiUserCert:Z

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 22
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v18, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 132
    sget-object v18, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 133
    new-instance v18, Landroid/net/LinkProperties;

    invoke-direct/range {v18 .. v18}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 139
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 141
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 142
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 143
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 156
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHasWapiAsCert:Z

    .line 157
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHasWapiUserCert:Z

    .line 992
    new-instance v18, Lcom/android/settings/wifi/WifiConfigController$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1025
    new-instance v18, Lcom/android/settings/wifi/WifiConfigController$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 181
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 182
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 184
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 185
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 186
    if-nez p3, :cond_1b5

    const/16 v18, 0x0

    :goto_8e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 188
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 191
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 194
    .local v12, resources:Landroid/content/res/Resources;
    const-string v18, "enterprise_policy"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_1d0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b024d

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0801f5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0801f6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1bd

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080217

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08021c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 213
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v18, 0x7f0400ae

    const v19, 0x1020014

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070015

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 216
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 220
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b0290

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 342
    :cond_184
    :goto_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b0291

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_1a5

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 348
    :cond_1a5
    new-instance v18, Lcom/android/settings/wifi/WifiConfigController$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 364
    return-void

    .line 186
    .end local v6           #context:Landroid/content/Context;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_1b5
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    goto/16 :goto_8e

    .line 218
    .restart local v6       #context:Landroid/content/Context;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0801de

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_172

    .line 222
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08020e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080207

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0801f4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 231
    .local v7, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 232
    .local v16, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v16, :cond_262

    .line 233
    const v18, 0x7f0b0260

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 236
    :cond_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v11

    .line 237
    .local v11, level:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_289

    .line 238
    const v18, 0x7f07001d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 239
    .local v14, signal:[Ljava/lang/String;
    const v18, 0x7f0b025f

    aget-object v19, v14, v11

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 242
    .end local v14           #signal:[Ljava/lang/String;
    :cond_289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 243
    .local v9, info:Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_2c4

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2c4

    .line 244
    const v18, 0x7f0b0261

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 247
    :cond_2c4
    const v18, 0x7f0b025e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 249
    const/4 v13, 0x0

    .line 250
    .local v13, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_38d

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 252
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_33c

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 254
    const/4 v13, 0x1

    .line 259
    :goto_313
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_31f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_348

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 260
    .local v3, a:Ljava/net/InetAddress;
    const v18, 0x7f0b0262

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_31f

    .line 256
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_33c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_313

    .line 264
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_348
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_477

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 266
    const/4 v13, 0x1

    .line 271
    :goto_360
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_38d

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_38d

    .line 273
    const v18, 0x7f0b0275

    const v19, 0x7f0b0276

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 280
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_38d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3e8

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v17

    .line 283
    .local v17, wp:Landroid/app/enterprise/WifiPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/app/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v18

    if-eqz v18, :cond_3e8

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 290
    .end local v17           #wp:Landroid/app/enterprise/WifiPolicy;
    :cond_3e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_404

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_45b

    .line 291
    :cond_404
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08022b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08022c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    if-eqz v13, :cond_45b

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08022c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08022d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :cond_45b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_484

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b0290

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_184

    .line 268
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_360

    .line 305
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_484
    if-nez v16, :cond_521

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_521

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b028e

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 310
    :goto_49e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_184

    .line 312
    const/4 v10, 0x1

    .line 321
    .local v10, isForget:Z
    const-string v18, "GT-I9100M"

    const-string v19, "GT-I9100"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4c3

    .line 327
    :cond_4c3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_184

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 330
    .local v15, ssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_50d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_184

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v18

    if-eqz v18, :cond_184

    .line 333
    :cond_50d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f0b028f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_184

    .line 308
    .end local v10           #isForget:Z
    .end local v15           #ssid:Ljava/lang/String;
    :cond_521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08020d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_49e
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 368
    .local v0, row:Landroid/view/View;
    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 369
    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 562
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 563
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_27

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_27

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_15
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 567
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_2a

    .line 568
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 569
    .local v6, result:I
    if-eqz v6, :cond_2a

    move v7, v8

    .line 597
    .end local v6           #result:I
    :goto_26
    return v7

    .line 563
    :cond_27
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_15

    .line 574
    :cond_2a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_76

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_38
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 578
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_74

    .line 579
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 583
    .local v3, port:I
    const/4 v6, 0x0

    .line 585
    .restart local v6       #result:I
    :try_start_60
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 586
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_67} :catch_79

    move-result v6

    .line 590
    :goto_68
    if-nez v6, :cond_7e

    .line 591
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_74
    move v7, v9

    .line 597
    goto :goto_26

    .line 574
    :cond_76
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_38

    .line 587
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_79
    move-exception v0

    .line 588
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0b0136

    goto :goto_68

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7e
    move v7, v8

    .line 594
    goto :goto_26
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 953
    const v0, 0x7f0b0271

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 955
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 956
    if-eqz v3, :cond_1c

    array-length v0, v3

    if-nez v0, :cond_32

    .line 957
    :cond_1c
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 965
    :goto_20
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 967
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 968
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 969
    return-void

    .line 959
    :cond_32
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 960
    aput-object v2, v0, v4

    .line 961
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    if-nez p0, :cond_5

    .line 176
    :cond_4
    :goto_4
    return v5

    .line 168
    :cond_5
    const/4 v7, 0x5

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v7, 0x2

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget-object v8, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 171
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2e
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 172
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3e

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    move v5, v6

    .line 173
    goto :goto_4

    .line 171
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 973
    if-eqz p3, :cond_26

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 974
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 976
    :cond_26
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 979
    if-eqz p2, :cond_1d

    .line 981
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 982
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_1d

    .line 983
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 984
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 989
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_1d
    return-void

    .line 982
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f08020f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 844
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_177

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_177

    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 852
    :goto_23
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16b

    .line 853
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_93

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080210

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080211

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 858
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080212

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 861
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 862
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080213

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 863
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 864
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080214

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 865
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 867
    :cond_93
    if-eqz v1, :cond_11e

    .line 868
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 869
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 870
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 871
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 872
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    :cond_c5
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 880
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 881
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    :cond_ec
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 887
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 888
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    :cond_109
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 891
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    :cond_11e
    :goto_11e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_16a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_16a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_16a

    .line 903
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_16a

    .line 905
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 907
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 909
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 913
    :cond_16a
    return-void

    .line 895
    :cond_16b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11e

    :cond_177
    move-object v1, v0

    goto/16 :goto_23
.end method

.method private showNetworkSetupFields()V
    .locals 7

    .prologue
    const v6, 0x7f0801fe

    const v5, 0x7f0801fc

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_2c

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 821
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 824
    :cond_2c
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 827
    if-ne v0, v3, :cond_4f

    .line 828
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 834
    :goto_3d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    if-eq v0, v3, :cond_45

    const/4 v1, 0x1

    if-ne v0, v1, :cond_59

    .line 836
    :cond_45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :goto_4e
    return-void

    .line 830
    :cond_4f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 838
    :cond_59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4e
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f080209

    const v5, 0x7f080208

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 916
    const/4 v0, 0x0

    .line 918
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f080206

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 920
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ba

    .line 921
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 924
    :goto_28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a7

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_7d

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08020a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08020b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f08020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 935
    :cond_7d
    if-eqz v1, :cond_a6

    .line 936
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_a6

    .line 938
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    :cond_a6
    :goto_a6
    return-void

    .line 944
    :cond_a7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a6

    :cond_ba
    move-object v1, v0

    goto/16 :goto_28
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f0801fe

    const v4, 0x7f0801f8

    const/16 v3, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 687
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_21

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 814
    :cond_20
    :goto_20
    return-void

    .line 694
    :cond_21
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_2f

    .line 695
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 698
    :cond_2f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_89

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 702
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 704
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 705
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 709
    :cond_65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 711
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_89

    .line 714
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b0270

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 753
    :cond_89
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9b

    .line 754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_20

    .line 757
    :cond_9b
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_20

    .line 760
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 762
    const-string v0, "GT-I9100M"

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e3

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070017

    const v2, 0x1090008

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 770
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 772
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 773
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 776
    :cond_e3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 778
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 779
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_198

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_198

    .line 786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 789
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_168

    .line 790
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 793
    :cond_168
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    :cond_198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_20

    .line 806
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_20
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 11
    .parameter "linkProperties"

    .prologue
    const v9, 0x7f0b029f

    const/4 v8, 0x0

    .line 601
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_9

    .line 650
    :cond_8
    :goto_8
    return v8

    .line 604
    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 607
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_14
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_17} :catch_31

    move-result-object v5

    .line 612
    const/4 v7, -0x1

    .line 614
    .local v7, networkPrefixLength:I
    :try_start_19
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_26} :catch_8d

    move-result v7

    .line 618
    :goto_27
    if-ltz v7, :cond_2d

    const/16 v10, 0x20

    if-le v7, v10, :cond_36

    .line 619
    :cond_2d
    const v8, 0x7f0b02a0

    goto :goto_8

    .line 608
    .end local v7           #networkPrefixLength:I
    :catch_31
    move-exception v2

    .line 609
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b029d

    goto :goto_8

    .line 621
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_36
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 624
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 627
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_49
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4c} :catch_81

    move-result-object v4

    .line 631
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 633
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 636
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_60
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_86

    move-result-object v1

    .line 640
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 641
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 642
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    :try_start_79
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_7c} :catch_89

    move-result-object v1

    .line 648
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_8

    .line 628
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_81
    move-exception v2

    .line 629
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0b029e

    goto :goto_8

    .line 637
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_86
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 638
    goto :goto_8

    .line 645
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_89
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 646
    goto/16 :goto_8

    .line 615
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_8d
    move-exception v10

    goto :goto_27
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1065
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1070
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    .line 655
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 657
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public enableSubmitIfAppropriate()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, -0x1

    .line 376
    const/4 v4, 0x0

    .line 377
    .local v4, ssidLength:I
    const/4 v5, 0x0

    .line 378
    .local v5, ssidSpaceCharCount:I
    const/4 v3, 0x0

    .line 380
    .local v3, ssid:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_2b

    .line 381
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v4

    .line 384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v4, :cond_2b

    .line 385
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_28

    .line 386
    add-int/lit8 v5, v5, 0x1

    .line 384
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 391
    .end local v1           #i:I
    :cond_2b
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v6

    .line 392
    .local v6, submit:Landroid/widget/Button;
    if-nez v6, :cond_34

    .line 441
    :goto_33
    return-void

    .line 393
    :cond_34
    const/4 v0, 0x0

    .line 395
    .local v0, enabled:Z
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 396
    const/4 v0, 0x1

    .line 402
    :goto_3c
    const/4 v2, 0x0

    .line 404
    .local v2, passwordInvalid:Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_54

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-nez v7, :cond_54

    .line 405
    const/4 v0, 0x0

    .line 411
    :goto_4a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v7, :cond_56

    .line 412
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_33

    .line 398
    .end local v2           #passwordInvalid:Z
    :cond_52
    const/4 v0, 0x0

    goto :goto_3c

    .line 407
    .restart local v2       #passwordInvalid:Z
    :cond_54
    const/4 v0, 0x1

    goto :goto_4a

    .line 418
    :cond_56
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v7

    if-nez v7, :cond_9e

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_69

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_75

    :cond_69
    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v7, v10, :cond_9e

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-ge v7, v11, :cond_9e

    .line 421
    :cond_75
    const/4 v2, 0x1

    .line 429
    :cond_76
    :goto_76
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v7, :cond_82

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_8e

    :cond_82
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_8c

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v7, v9, :cond_8f

    :cond_8c
    if-eqz v2, :cond_8f

    .line 432
    :cond_8e
    const/4 v0, 0x0

    .line 436
    :cond_8f
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v7, :cond_9a

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v7, :cond_9a

    if-ne v4, v5, :cond_9a

    .line 437
    const/4 v0, 0x0

    .line 440
    :cond_9a
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_33

    .line 423
    :cond_9e
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v7, v9, :cond_76

    iget v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v7, v10, :cond_76

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-eqz v7, :cond_c8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-lez v7, :cond_76

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-ge v7, v11, :cond_76

    .line 426
    :cond_c8
    const/4 v2, 0x1

    goto :goto_76
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22

    .line 444
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v9, :cond_16

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v5, :cond_16

    move-object v0, v4

    .line 558
    :goto_15
    return-object v0

    .line 448
    :cond_16
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 450
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_38

    .line 451
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 454
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 462
    :goto_31
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v5, :pswitch_data_356

    move-object v0, v4

    .line 551
    goto :goto_15

    .line 455
    :cond_38
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v9, :cond_49

    .line 456
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_31

    .line 459
    :cond_49
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_31

    .line 464
    :pswitch_50
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 554
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 555
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 556
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_15

    .line 468
    :pswitch_67
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 469
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 470
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 471
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_55

    .line 472
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 473
    .local v2, length:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_9a

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9a

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_a7

    :cond_9a
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 477
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v7

    goto :goto_55

    .line 479
    :cond_a7
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_55

    .line 485
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_c1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 486
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_55

    .line 487
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 489
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_55

    .line 491
    :cond_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_55

    .line 497
    .end local v3           #password:Ljava/lang/String;
    :pswitch_fd
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 498
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 499
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 501
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_189

    const-string v4, ""

    :goto_122
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 503
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_1a3

    const-string v4, ""

    :goto_131
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 506
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_1c0

    const-string v4, ""

    :goto_140
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 509
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_1dd

    const-string v4, ""

    :goto_14f
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 512
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_1fa

    const-string v4, ""

    :goto_15e
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 514
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_206

    const-string v4, ""

    :goto_16d
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_55

    .line 517
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_55

    .line 501
    :cond_189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_122

    .line 503
    :cond_1a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://CACERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_131

    .line 506
    :cond_1c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRCERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_140

    .line 509
    :cond_1dd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_14f

    .line 512
    :cond_1fa
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_15e

    .line 514
    :cond_206
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16d

    .line 522
    :pswitch_212
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 523
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_234

    .line 524
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_260

    .line 526
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 531
    .end local v3           #password:Ljava/lang/String;
    :cond_234
    :goto_234
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v4, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v1, v4, v5

    .line 533
    .local v1, iType:I
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_55

    .line 528
    .end local v1           #iType:I
    .restart local v3       #password:Ljava/lang/String;
    :cond_260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_234

    .line 537
    .end local v3           #password:Ljava/lang/String;
    :pswitch_278
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 538
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 539
    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 540
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_316

    const-string v4, ""

    :goto_2ca
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 544
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_336

    const-string v4, ""

    :goto_312
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_55

    .line 542
    :cond_316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIAS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2ca

    .line 546
    :cond_336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIUSR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_312

    .line 462
    :pswitch_data_356
    .packed-switch 0x0
        :pswitch_50
        :pswitch_67
        :pswitch_c1
        :pswitch_fd
        :pswitch_212
        :pswitch_278
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 661
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 662
    .local v0, config:Landroid/net/wifi/WpsInfo;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 673
    const/4 v1, 0x4

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 674
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_18
    return-object v0

    .line 664
    :pswitch_19
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 677
    :goto_1c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0801fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_39
    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 680
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 681
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 682
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_18

    .line 667
    :pswitch_4d
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1c

    .line 670
    :pswitch_51
    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1c

    .line 678
    :cond_55
    const/4 v1, 0x0

    goto :goto_39

    .line 662
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_19
        :pswitch_4d
        :pswitch_51
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f08022d

    .line 1079
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801f8

    if-ne v0, v1, :cond_53

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1082
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1099
    :cond_2e
    :goto_2e
    return-void

    .line 1087
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_50

    const/16 v0, 0x90

    :goto_3b
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2e

    .line 1087
    :cond_50
    const/16 v0, 0x80

    goto :goto_3b

    .line 1092
    :cond_53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08022c

    if-ne v0, v1, :cond_2e

    .line 1093
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1094
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 1096
    :cond_6f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v6, 0x7f080221

    const v5, 0x7f080220

    const v4, 0x7f08021f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_19

    .line 1104
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1105
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1142
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1143
    :goto_18
    return-void

    .line 1106
    :cond_19
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_35

    .line 1107
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_15

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_18

    .line 1118
    :cond_35
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3d

    .line 1119
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_15

    .line 1121
    :cond_3d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_114

    .line 1122
    const/4 v0, 0x3

    if-ne p3, v0, :cond_b9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15

    .line 1131
    :cond_b9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_15

    .line 1140
    :cond_114
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_15
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1075
    return-void
.end method
