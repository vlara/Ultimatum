.class public Lcom/android/systemui/statusbar/policy/SilentModeController;
.super Ljava/lang/Object;
.source "SilentModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;


# static fields
.field private static mSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SilentModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeController$1;-><init>(Lcom/android/systemui/statusbar/policy/SilentModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SilentModeController;->updateStatus()V

    :goto_2d
    return-void

    :cond_2e
    const-string v1, "STATUSBAR-SilentModeController"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public onClick(Z)V
    .locals 4

    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    const/4 v0, 0x0

    :goto_1f
    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void

    :cond_3d
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    if-nez v1, :cond_43

    const/4 v0, 0x2

    goto :goto_1f

    :cond_43
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    const/4 v0, 0x1

    goto :goto_1f

    :cond_4a
    const/4 v0, 0x2

    goto :goto_1f
.end method

.method public updateStatus()V
    .locals 4

    const-string v1, "STATUSBAR-SilentModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    :goto_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SilentModeController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_27
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    if-nez v1, :cond_2d

    const/4 v0, 0x4

    goto :goto_21

    :cond_2d
    sget v1, Lcom/android/systemui/statusbar/policy/SilentModeController;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    const/4 v0, 0x2

    goto :goto_21

    :cond_34
    const/4 v0, 0x2

    goto :goto_21
.end method
