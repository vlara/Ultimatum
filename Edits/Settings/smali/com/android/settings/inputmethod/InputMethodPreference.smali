.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/CheckBoxPreference;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/widget/ImageView;

.field private final mIsSystemIme:Z

.field private final mPrefOnclickListener:Landroid/view/View$OnClickListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V
    .registers 10
    .parameter "fragment"
    .parameter "settingsIntent"
    .parameter "imm"
    .parameter "imi"
    .parameter "imiCount"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0018

    invoke-direct {p0, v1, v3, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 62
    new-instance v1, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    .line 83
    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 84
    const v1, 0x7f04006f

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 86
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 87
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 88
    iput-object p4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 90
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 91
    invoke-static {p4}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->isAuxiliaryIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 92
    .local v0, isAuxIme:Z
    const/4 v1, 0x1

    if-le p5, v1, :cond_3e

    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v1, :cond_42

    if-nez v0, :cond_42

    .line 93
    :cond_3e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 95
    :cond_42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/SettingsPreferenceFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private saveImeSettings()V
    .registers 6

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_26

    const/4 v0, 0x1

    :goto_22
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 274
    return-void

    .line 270
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;)V
    .registers 10
    .parameter "imi"
    .parameter "chkPref"

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    :cond_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$6;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/inputmethod/InputMethodPreference$6;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$5;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 253
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04cf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v6}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 257
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 11
    .parameter "fragment"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_19

    .line 191
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 192
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 194
    const/4 v3, 0x1

    .line 199
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_18
    return v3

    .line 196
    :cond_19
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private updatePreferenceViews()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 163
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_22

    .line 164
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 167
    if-nez v0, :cond_22

    .line 168
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const v3, 0x3ecccccd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    :cond_22
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    .line 172
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    :cond_2b
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_34

    .line 175
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    :cond_34
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v2, :cond_57

    .line 178
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 181
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v1, :cond_58

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    :goto_4c
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    if-nez v1, :cond_57

    .line 183
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    .end local v1           #enabled:Z
    :cond_57
    return-void

    .line 181
    .restart local v1       #enabled:Z
    :cond_58
    const/4 v2, 0x0

    goto :goto_4c
.end method


# virtual methods
.method public compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 262
    iget-object v0, p1, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 265
    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_1a

    :cond_23
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p1
    check-cast p2, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/InputMethodPreference;->compare(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method

.method public getSummaryString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 206
    .local v4, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 207
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_29

    .line 208
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_29
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 212
    .local v3, subtypeLabel:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 214
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3           #subtypeLabel:Ljava/lang/CharSequence;
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 100
    const v3, 0x7f08014c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mPrefOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v3, 0x7f08014d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    .line 103
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 104
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 105
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-le v3, v0, :cond_75

    .line 106
    .local v0, hasSubtypes:Z
    :goto_3d
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, imiId:Ljava/lang/String;
    if-eqz v0, :cond_4f

    .line 108
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    :cond_4f
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_5d

    .line 121
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$3;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_5d
    if-eqz v0, :cond_69

    .line 136
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$4;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 146
    .local v2, listener:Landroid/view/View$OnLongClickListener;
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    .end local v2           #listener:Landroid/view/View$OnLongClickListener;
    :cond_69
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v3, :cond_77

    .line 149
    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    :goto_74
    return-void

    .line 105
    .end local v0           #hasSubtypes:Z
    .end local v1           #imiId:Ljava/lang/String;
    :cond_75
    const/4 v0, 0x0

    goto :goto_3d

    .line 151
    .restart local v0       #hasSubtypes:Z
    .restart local v1       #imiId:Ljava/lang/String;
    :cond_77
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_74
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 229
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 159
    return-void
.end method

.method public updateSummary()V
    .registers 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, summary:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 223
    :goto_a
    return-void

    .line 222
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method
