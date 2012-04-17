.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mNewOrientation:I

.field private static mOldOrientation:I


# instance fields
.field private ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

.field private RemoteControls:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstSignin:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSimLockPreferences:Landroid/preference/PreferenceCategory;

.field private mSimState:I

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    .line 649
    new-instance v0, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable(Z)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 168
    .local v4, root:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    iput v7, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    .line 170
    if-eqz v4, :cond_15

    .line 171
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 173
    :cond_15
    const v7, 0x7f050029

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 177
    const/4 v3, 0x0

    .line 178
    .local v3, resid:I
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1c6

    .line 179
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v7

    if-eqz v7, :cond_1c1

    .line 180
    const v3, 0x7f05002e

    .line 203
    :goto_33
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 207
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 210
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v7

    packed-switch v7, :pswitch_data_254

    .line 228
    :goto_45
    :pswitch_45
    const-string v7, "ro.secdirenc"

    const-string v10, "false"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 229
    const v7, 0x7f050034

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 233
    :cond_5b
    const-string v7, "lock_after_timeout"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 234
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v7, :cond_6f

    .line 235
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 240
    :cond_6f
    const-string v7, "visiblepattern"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 243
    const-string v7, "unlock_tactile_feedback"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_a4

    .line 245
    const-string v7, "security_category"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 247
    .local v5, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v5, :cond_a4

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_a4

    .line 248
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    .end local v5           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_a4
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, LostPhonePreferences:Landroid/preference/PreferenceCategory;
    const v7, 0x7f0b070d

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 255
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    .line 258
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const-string v10, "SIMAlert"

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b070e

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 260
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b070f

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "change_alert"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_214

    .line 262
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    :goto_e9
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    new-instance v10, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 282
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-eqz v7, :cond_10c

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v8, :cond_111

    .line 286
    :cond_10c
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    :cond_111
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 289
    .local v1, MessageRecepients:Landroid/preference/Preference;
    const v7, 0x7f0b0710

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 290
    const v7, 0x7f0b0711

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 291
    new-instance v7, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 301
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    const-string v7, "SIMAlert"

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 304
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    .line 305
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b0714

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 306
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b0713

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "remote_control"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_21b

    .line 308
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    :goto_162
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    new-instance v10, Lcom/android/settings/SecuritySettings$3;

    invoke-direct {v10, p0}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 334
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    const v7, 0x7f05002f

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 345
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 346
    .local v6, tm:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v10

    if-ne v7, v10, :cond_188

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v8, :cond_192

    :cond_188
    const-string v7, "SHW-M250L"

    const-string v10, "GT-I9100"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_222

    .line 348
    :cond_192
    const-string v7, "sim_lock"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :goto_19b
    const-string v7, "show_password"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 362
    const-string v7, "reset_credentials"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 364
    const-string v7, "toggle_install_applications"

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 366
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    return-object v4

    .line 182
    .end local v0           #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    .end local v1           #MessageRecepients:Landroid/preference/Preference;
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_1c1
    const v3, 0x7f05002b

    goto/16 :goto_33

    .line 184
    :cond_1c6
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v7

    if-eqz v7, :cond_1db

    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v7

    if-eqz v7, :cond_1db

    .line 186
    const v3, 0x7f05002a

    goto/16 :goto_33

    .line 188
    :cond_1db
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v7

    sparse-switch v7, :sswitch_data_25e

    goto/16 :goto_33

    .line 190
    :sswitch_1e6
    const v3, 0x7f050031

    .line 191
    goto/16 :goto_33

    .line 193
    :sswitch_1eb
    const v3, 0x7f050033

    .line 194
    goto/16 :goto_33

    .line 198
    :sswitch_1f0
    const v3, 0x7f050030

    goto/16 :goto_33

    .line 214
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :pswitch_1f5
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v7

    if-ne v7, v8, :cond_204

    .line 215
    const v7, 0x7f05002d

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_45

    .line 217
    :cond_204
    const v7, 0x7f05002c

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_45

    .line 223
    :pswitch_20c
    const v7, 0x7f050035

    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_45

    .line 264
    .restart local v0       #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    :cond_214
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_e9

    .line 310
    .restart local v1       #MessageRecepients:Landroid/preference/Preference;
    :cond_21b
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_162

    .line 350
    .restart local v6       #tm:Landroid/telephony/TelephonyManager;
    :cond_222
    const-string v7, "sim_lock"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    .line 351
    iget v7, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    if-eqz v7, :cond_234

    iget v7, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    if-ne v7, v8, :cond_23b

    .line 352
    :cond_234
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_19b

    .line 354
    :cond_23b
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_251

    move v7, v8

    :goto_24c
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_19b

    :cond_251
    move v7, v9

    goto :goto_24c

    .line 210
    nop

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_20c
        :pswitch_45
        :pswitch_1f5
    .end packed-switch

    .line 188
    :sswitch_data_25e
    .sparse-switch
        0x10000 -> :sswitch_1e6
        0x20000 -> :sswitch_1eb
        0x40000 -> :sswitch_1f0
        0x50000 -> :sswitch_1f0
        0x60000 -> :sswitch_1f0
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 442
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 443
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 444
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v8, v7

    if-ge v1, v8, :cond_39

    .line 447
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 448
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_36

    .line 449
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 453
    .end local v4           #timeout:J
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_47

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_85

    .line 454
    :cond_47
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 456
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 458
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 459
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_85

    .line 460
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 467
    .end local v6           #userPreference:I
    :cond_85
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_92

    const/4 v8, 0x1

    :goto_8e
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 468
    return-void

    .line 467
    :cond_92
    const/4 v8, 0x0

    goto :goto_8e
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 567
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    return-void

    .line 378
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 412
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 413
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_45

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 415
    .local v0, adminTimeout:J
    :goto_28
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 417
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_44

    .line 421
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 423
    :cond_44
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_45
    move-wide v0, v6

    .line 414
    goto :goto_28
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 429
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 430
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 431
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 432
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1a
    array-length v8, v7

    if-ge v4, v8, :cond_33

    .line 433
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 434
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_30

    .line 435
    move v0, v4

    .line 432
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 438
    .end local v5           #timeout:J
    :cond_33
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0b0197

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method private updateSIMLockEnable(Z)V
    .locals 4
    .parameter "isAirplaneModeOn"

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_6

    .line 647
    :goto_5
    return-void

    .line 627
    :cond_6
    if-eqz p1, :cond_e

    .line 628
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_5

    .line 630
    :cond_e
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 632
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 633
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0452

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 391
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 575
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 578
    const-string v0, "PCW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_83

    .line 582
    if-ne p2, v5, :cond_4a

    .line 583
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    if-eqz v0, :cond_4b

    .line 584
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    iput-boolean v6, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    .line 623
    :cond_4a
    :goto_4a
    return-void

    .line 589
    :cond_4b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6d

    .line 590
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    const-string v0, "SecuritySettings"

    const-string v1, "change_alert : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 594
    :cond_6d
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    const-string v0, "SecuritySettings"

    const-string v1, "change_alert : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 599
    :cond_83
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_a2

    .line 600
    if-ne p2, v5, :cond_4a

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 602
    const-class v1, Lcom/android/settings/fmm/AlertRecipients;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0710

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_4a

    .line 605
    :cond_a2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4a

    .line 606
    if-ne p2, v5, :cond_4a

    .line 607
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    if-eqz v0, :cond_bd

    .line 608
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    iput-boolean v6, p0, Lcom/android/settings/SecuritySettings;->mFirstSignin:Z

    goto :goto_4a

    .line 612
    :cond_bd
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d9

    .line 613
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4a

    .line 616
    :cond_d9
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REMOTE_CONTROL_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 394
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    .line 395
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 398
    :cond_10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 152
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 157
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_3d

    .line 158
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 162
    :cond_3d
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 403
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_c

    .line 404
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 406
    :cond_c
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 527
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    .line 532
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 657
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_16

    .line 658
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 660
    .local v1, timeout:I
    :try_start_a
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_13} :catch_18

    .line 665
    :goto_13
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 667
    .end local v1           #timeout:I
    :cond_16
    const/4 v2, 0x1

    return v2

    .line 662
    .restart local v1       #timeout:I
    :catch_18
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 539
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 540
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-virtual {p0, p0, v2, v4, v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 563
    :goto_1c
    return v3

    .line 542
    :cond_1d
    const-string v4, "lockenabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 543
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1c

    .line 544
    :cond_2d
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 545
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1c

    .line 546
    :cond_3d
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 547
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_1c

    .line 548
    :cond_4d
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_64

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_60

    move v2, v3

    :cond_60
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1c

    .line 551
    :cond_64
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7d

    .line 552
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 553
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 554
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto :goto_1c

    .line 556
    :cond_79
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1c

    .line 560
    :cond_7d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1c
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 472
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 476
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 479
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_21

    .line 480
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 485
    :cond_21
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 486
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_34

    .line 487
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    :cond_34
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_41

    .line 490
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 493
    :cond_41
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_password"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c9

    move v3, v4

    :goto_50
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 496
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    .line 497
    .local v2, state:Landroid/security/KeyStore$State;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v3, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v2, v3, :cond_cb

    move v3, v4

    :goto_62
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v0, v8, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "change_alert"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_cd

    .line 506
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 509
    :goto_89
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "remote_control"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_d3

    .line 510
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    :goto_9a
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    sput v3, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    .line 516
    sget v3, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    sget v4, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    if-eq v3, v4, :cond_c8

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 519
    sget v3, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    sput v3, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    .line 523
    :cond_c8
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #state:Landroid/security/KeyStore$State;
    :cond_c9
    move v3, v5

    .line 493
    goto :goto_50

    .restart local v2       #state:Landroid/security/KeyStore$State;
    :cond_cb
    move v3, v5

    .line 497
    goto :goto_62

    .line 508
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_cd
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_89

    .line 512
    :cond_d3
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9a
.end method
