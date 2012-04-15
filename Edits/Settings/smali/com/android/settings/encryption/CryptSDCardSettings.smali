.class public Lcom/android/settings/encryption/CryptSDCardSettings;
.super Landroid/preference/PreferenceFragment;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
    }
.end annotation


# instance fields
.field private mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mApplyButton:Landroid/widget/Button;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

.field private mEncryptDefault:Z

.field private mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

.field private mEncryptExcludeMedia:Z

.field private mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

.field private mEncryptFull:Z

.field private mEncryptFullPref:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIsDisabledByAdmin:Z

.field private mParent:Landroid/app/Activity;

.field private mStartedByAdmin:Z

.field private mStartedByIntent:Z

.field private mSync:Ljava/lang/Object;

.field private mTextEncMessages:Landroid/widget/TextView;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mValueChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 56
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    .line 57
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 69
    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 71
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 72
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 101
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/android/settings/encryption/CryptSDCardSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$1;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    iput-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/encryption/CryptSDCardSettings;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V

    return-void
.end method

.method private applyEncryptionUpdates()V
    .registers 2

    .prologue
    .line 407
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->runKeyguardConfirmation(I)Z

    .line 408
    return-void
.end method

.method private disableAllUI()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 469
    const-string v0, "Disable All UI"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 474
    return-void
.end method

.method private enableAllUI()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 461
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 466
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 80
    const-string v0, "CryptKeeperSDSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private restorePrefs()V
    .registers 12

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 221
    const-string v4, "restorePrefs"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 223
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_ba

    .line 224
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_b3

    const-string v4, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 226
    const-string v4, "adminStart"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, adminStart:Ljava/lang/String;
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    .line 228
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 229
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByAdmin:Z

    .line 242
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #adminStart:Ljava/lang/String;
    :cond_32
    :goto_32
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 243
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v4, :cond_45

    .line 244
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 247
    :cond_45
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 248
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 249
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v8, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 250
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iput v9, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 253
    :cond_5e
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_c1

    move v4, v5

    :goto_65
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 254
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_c3

    move v4, v5

    :goto_6e
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 255
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_c5

    move v4, v5

    :goto_77
    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 257
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_c7

    move v4, v5

    :goto_82
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 258
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v9, v4, :cond_c9

    move v4, v5

    :goto_8e
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 259
    iget-boolean v7, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    if-ne v10, v4, :cond_cb

    move v4, v5

    :goto_9a
    or-int/2addr v4, v7

    iput-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 261
    iget-object v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mAdminPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v4, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v8, v4, :cond_aa

    .line 262
    iput-boolean v5, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    .line 263
    const-string v4, "Disabled by Admin"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 266
    :cond_aa
    iput-boolean v6, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 267
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->enableAllUI()V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->updatePrefUI()V

    .line 269
    return-void

    .line 232
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v0       #action:Ljava/lang/String;
    :cond_b3
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_32

    .line 235
    .end local v0           #action:Ljava/lang/String;
    :cond_ba
    const-string v4, "CryptSDCardSettings started by user"

    invoke-direct {p0, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_32

    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_c1
    move v4, v6

    .line 253
    goto :goto_65

    :cond_c3
    move v4, v6

    .line 254
    goto :goto_6e

    :cond_c5
    move v4, v6

    .line 255
    goto :goto_77

    :cond_c7
    move v4, v6

    .line 257
    goto :goto_82

    :cond_c9
    move v4, v6

    .line 258
    goto :goto_8e

    :cond_cb
    move v4, v6

    .line 259
    goto :goto_9a
.end method

.method private runKeyguardConfirmation(I)Z
    .registers 7
    .parameter "request"

    .prologue
    .line 448
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 449
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_11

    .line 450
    const/4 v2, 0x0

    .line 454
    :goto_10
    return v2

    .line 453
    :cond_11
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 454
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f0b0759

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0b075a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_10
.end method

.method private showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v1, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 478
    const-class v0, Lcom/android/settings/encryption/CryptSDCardConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 479
    const v0, 0x7f0b0758

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 480
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "password"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "enc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fullEnc"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "excludeMedia"

    iget v3, p2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 486
    return-void
.end method

.method private updatePrefUI()V
    .registers 19

    .prologue
    .line 272
    const-string v14, "updatePrefUI"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    if-nez v14, :cond_1c

    .line 274
    const-string v14, "parent activity is null, cannot display UI, removing fragment"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 276
    .local v4, mgr:Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStack()V

    .line 404
    .end local v4           #mgr:Landroid/app/FragmentManager;
    :goto_1b
    return-void

    .line 280
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 281
    .local v5, res:Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v1, b:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 284
    .local v6, serviceBusy:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v14, :cond_14f

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b074c

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 292
    :goto_42
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v14, :cond_163

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b074f

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 300
    :goto_5a
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v14, :cond_177

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0751

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 308
    :goto_72
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mStartedByIntent:Z

    if-nez v14, :cond_8c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    if-nez v14, :cond_8c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-nez v14, :cond_8c

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :cond_8c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mIsDisabledByAdmin:Z

    if-eqz v14, :cond_c8

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0753

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0753

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0753

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 323
    :cond_c8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 325
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_18b

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v14

    if-nez v14, :cond_18b

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    .line 327
    const v14, 0x7f0b0808

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :goto_ef
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v14}, Landroid/dirEncryption/DirEncryptionManager;->getLastError()I

    move-result v3

    .line 352
    .local v3, error:I
    packed-switch v3, :pswitch_data_2b6

    .line 388
    :goto_fa
    :pswitch_fa
    const-string v14, "\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    const-string v15, "storage"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    .line 391
    .local v13, storageManager:Landroid/os/storage/StorageManager;
    if-eqz v13, :cond_142

    .line 392
    const-string v14, "/mnt/sdcard/external_sd"

    invoke-virtual {v13, v14}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, state:Ljava/lang/String;
    const-string v14, "removed"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_142

    .line 394
    const-string v14, "checking"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_142

    if-nez v6, :cond_142

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->satisfyFIPSPassword()Z

    move-result v14

    if-eqz v14, :cond_142

    .line 396
    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const v14, 0x7f0b0777

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 403
    .end local v11           #state:Ljava/lang/String;
    :cond_142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 288
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #error:I
    .end local v13           #storageManager:Landroid/os/storage/StorageManager;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b074b

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_42

    .line 296
    :cond_163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b074e

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_5a

    .line 304
    :cond_177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0752

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_72

    .line 330
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_18b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v14}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v12

    .line 331
    .local v12, status:I
    if-eqz v12, :cond_1c2

    .line 332
    const-string v14, "Service is busy: Disabling UI"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 333
    const/4 v6, 0x1

    .line 334
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v14, :cond_1b7

    .line 335
    const v14, 0x7f0b0754

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_1ad
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->disableAllUI()V

    .line 342
    const-string v14, "\n"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ef

    .line 338
    :cond_1b7
    const v14, 0x7f0b0755

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ad

    .line 344
    :cond_1c2
    const/4 v6, 0x0

    .line 345
    const-string v14, "Service is not busy"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 355
    .end local v12           #status:I
    .restart local v3       #error:I
    :pswitch_1cc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v14}, Landroid/dirEncryption/DirEncryptionManager;->getAdditionalSpaceRequired()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4090

    div-double v9, v14, v16

    .line 356
    .local v9, spaceInMB:D
    const-wide/high16 v14, 0x4090

    div-double v7, v9, v14

    .line 358
    .local v7, spaceInGB:D
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "spaceInMB: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 359
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "spaceInGB: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v14, :cond_256

    .line 362
    const-wide/high16 v14, 0x3ff0

    cmpg-double v14, v7, v14

    if-gez v14, :cond_23c

    .line 363
    const v14, 0x7f0b0773

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_fa

    .line 365
    :cond_23c
    const v14, 0x7f0b0771

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_232

    .line 369
    :cond_256
    const-wide/high16 v14, 0x3ff0

    cmpg-double v14, v7, v14

    if-gez v14, :cond_276

    .line 370
    const v14, 0x7f0b0774

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_232

    .line 372
    :cond_276
    const v14, 0x7f0b0772

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_232

    .line 379
    .end local v7           #spaceInGB:D
    .end local v9           #spaceInMB:D
    :pswitch_290
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v14, :cond_2aa

    .line 380
    const v14, 0x7f0b0775

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :goto_2a0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_fa

    .line 383
    :cond_2aa
    const v14, 0x7f0b0776

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a0

    .line 352
    nop

    :pswitch_data_2b6
    .packed-switch 0x4
        :pswitch_1cc
        :pswitch_fa
        :pswitch_fa
        :pswitch_290
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 412
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 414
    const/16 v2, 0x64

    if-eq p1, v2, :cond_8

    .line 438
    :cond_7
    :goto_7
    return-void

    .line 420
    :cond_8
    const/4 v2, -0x1

    if-ne p2, v2, :cond_7

    if-eqz p3, :cond_7

    .line 421
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 431
    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_31

    const/4 v2, 0x2

    :goto_20
    iget-boolean v3, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v3, :cond_33

    const/4 v3, 0x4

    :goto_25
    iget-boolean v4, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v4, :cond_35

    const/4 v4, 0x6

    :goto_2a
    invoke-direct {v1, v2, v3, v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 435
    .local v1, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0, v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->showFinalConfirmation(Ljava/lang/String;Landroid/dirEncryption/SDCardEncryptionPolicies;)V

    goto :goto_7

    .line 431
    .end local v1           #policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_31
    const/4 v2, 0x3

    goto :goto_20

    :cond_33
    const/4 v3, 0x5

    goto :goto_25

    :cond_35
    const/4 v4, 0x7

    goto :goto_2a
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 123
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    .line 124
    const-string v0, "onAttach"

    invoke-direct {p0, v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->log(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 129
    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 132
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_13

    .line 133
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 136
    :cond_13
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v1, "external_default"

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v1, "external_full"

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string v1, "external_file_exclude"

    invoke-virtual {p0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    .line 142
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mTextEncMessages:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    const v2, 0x7f08005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    .line 149
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/encryption/CryptSDCardSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/encryption/CryptSDCardSettings$2;-><init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 159
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 173
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mValueChanged:Z

    .line 178
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    const-string v2, "external_default"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 180
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    .line 182
    iget-boolean v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefault:Z

    if-eqz v2, :cond_2a

    .line 183
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b074c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 216
    :goto_29
    return v0

    .line 185
    :cond_2a
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptDefaultPref:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0b074b

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 186
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    goto :goto_29

    .line 193
    .restart local p2
    :cond_41
    const-string v2, "external_full"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 194
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    .line 196
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFull:Z

    if-eqz v1, :cond_62

    .line 197
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b074f

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_29

    .line 199
    :cond_62
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptFullPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b074e

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_29

    .line 204
    .restart local p2
    :cond_6b
    const-string v2, "external_file_exclude"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 205
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    .line 207
    iget-boolean v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMedia:Z

    if-eqz v1, :cond_8c

    .line 208
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0751

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_29

    .line 210
    :cond_8c
    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mEncryptExcludeMediaPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b0752

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_29

    .restart local p2
    :cond_95
    move v0, v1

    .line 216
    goto :goto_29
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings;->mDirEncryptListner:Lcom/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/encryption/CryptSDCardSettings;->restorePrefs()V

    .line 167
    return-void
.end method
