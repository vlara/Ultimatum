.class public Lcom/android/wanam/systemui/StBar/SoundButton;
.super Lcom/android/wanam/systemui/StBar/PowerButton;
.source "SoundButton.java"


# static fields
.field public static AUDIO_MANAGER:Landroid/media/AudioManager; = null

.field public static final CM_MODE_SOUNDVIB_SOUND_VIB_SILENT:I = 0x5

.field public static final CM_MODE_SOUNDVIB_VIB:I = 0x0

.field public static final CM_MODE_SOUNDVIB_VIB_SILENT:I = 0x3

.field public static final CM_MODE_SOUND_SILENT:I = 0x2

.field public static final CM_MODE_SOUND_VIB:I = 0x1

.field public static final CM_MODE_SOUND_VIB_SILENT:I = 0x4

.field public static final CM_MODE_VIB_SILENT:I = 0x6

.field public static final RINGER_MODE_SILENT:I = 0x1

.field public static final RINGER_MODE_SOUND_AND_VIBRATE:I = 0x4

.field public static final RINGER_MODE_SOUND_ONLY:I = 0x3

.field public static final RINGER_MODE_UNKNOWN:I = 0x0

.field public static final RINGER_MODE_VIBRATE_ONLY:I = 0x2

.field public static final VIBRATE_DURATION:I = 0x1f4

.field public static VIBRATOR:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    sput-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerButton;-><init>()V

    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentCMMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_ring_mode"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSoundState(Landroid/content/Context;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/SoundButton;->initServices(Landroid/content/Context;)V

    sget-object v5, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sget-object v5, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    if-ne v0, v2, :cond_18

    if-ne v1, v3, :cond_18

    const/4 v2, 0x4

    :cond_17
    :goto_17
    return v2

    :cond_18
    if-ne v0, v2, :cond_1c

    const/4 v2, 0x3

    goto :goto_17

    :cond_1c
    if-eq v0, v3, :cond_17

    if-nez v0, :cond_22

    move v2, v3

    goto :goto_17

    :cond_22
    move v2, v4

    goto :goto_17
.end method

.method private static hapticFeedbackEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v3

    goto :goto_1b

    :cond_1e
    if-ne v2, v0, :cond_21

    :goto_20
    goto :goto_1b

    :cond_21
    move v0, v3

    goto :goto_20
.end method

.method private static initServices(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    :cond_e
    sget-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    if-nez v0, :cond_1c

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    :cond_1c
    return-void
.end method

.method private supports(I)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wanam/systemui/StBar/SoundButton;->getCurrentCMMode(Landroid/content/Context;)I

    move-result v0

    packed-switch p1, :pswitch_data_3e

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1

    :pswitch_14
    if-eq v0, v6, :cond_13

    if-eq v0, v4, :cond_13

    if-eq v0, v5, :cond_13

    if-eq v0, v3, :cond_13

    const/4 v2, 0x6

    if-ne v0, v2, :cond_12

    goto :goto_13

    :pswitch_20
    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_13

    if-eq v0, v5, :cond_13

    if-eq v0, v3, :cond_13

    const/4 v2, 0x6

    if-ne v0, v2, :cond_12

    goto :goto_13

    :pswitch_2e
    if-eq v0, v1, :cond_13

    if-eq v0, v6, :cond_13

    if-eq v0, v5, :cond_13

    if-ne v0, v3, :cond_12

    goto :goto_13

    :pswitch_37
    if-eqz v0, :cond_13

    if-eq v0, v4, :cond_13

    if-ne v0, v3, :cond_12

    goto :goto_13

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
        :pswitch_2e
        :pswitch_37
    .end packed-switch
.end method

.method private static updateSettings(Landroid/content/Context;IIIZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_in_silent"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    sget-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->AUDIO_MANAGER:Landroid/media/AudioManager;

    invoke-virtual {v0, p3}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-eqz p4, :cond_23

    invoke-static {p0}, Lcom/android/wanam/systemui/StBar/SoundButton;->hapticFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/wanam/systemui/StBar/SoundButton;->VIBRATOR:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_23
    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getText()I
    .locals 2

    const v0, 0x30b0041

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wanam/systemui/StBar/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :goto_10
    :pswitch_10
    return v0

    :pswitch_11
    const v0, 0x30b0042

    goto :goto_10

    :pswitch_15
    const v0, 0x30b0044

    goto :goto_10

    :pswitch_19
    const v0, 0x30b0043

    goto :goto_10

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_15
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected handleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/SoundButton;->initServices(Landroid/content/Context;)V

    packed-switch v1, :pswitch_data_a4

    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    :goto_18
    return-void

    :pswitch_19
    invoke-direct {p0, v6}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v0, v3, v4, v4, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_23
    invoke-direct {p0, v4}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v0, v3, v3, v3, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_2d
    invoke-direct {p0, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v0, v5, v5, v5, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_37
    invoke-static {v0, v3, v3, v3, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :pswitch_3b
    invoke-direct {p0, v4}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {v0, v3, v4, v3, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_45
    invoke-direct {p0, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {v0, v5, v5, v5, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_4f
    invoke-direct {p0, v7}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_59
    invoke-static {v0, v3, v3, v3, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :pswitch_5d
    invoke-direct {p0, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-static {v0, v5, v5, v5, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_67
    invoke-direct {p0, v7}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_71
    invoke-direct {p0, v6}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-static {v0, v3, v4, v4, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_7b
    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :pswitch_7f
    invoke-direct {p0, v7}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_89
    invoke-direct {p0, v6}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-static {v0, v3, v4, v4, v5}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto :goto_18

    :cond_93
    invoke-direct {p0, v4}, Lcom/android/wanam/systemui/StBar/SoundButton;->supports(I)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-static {v0, v3, v4, v3, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_18

    :cond_9e
    invoke-static {v0, v3, v3, v4, v3}, Lcom/android/wanam/systemui/StBar/SoundButton;->updateSettings(Landroid/content/Context;IIIZ)V

    goto/16 :goto_18

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_5d
        :pswitch_3b
        :pswitch_19
    .end packed-switch
.end method

.method protected updateState()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/SoundButton;->getSoundState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :goto_f
    return-void

    :pswitch_10
    const v0, 0x3020087

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mIcon:I

    iput v1, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mState:I

    goto :goto_f

    :pswitch_18
    const v0, 0x3020086

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mIcon:I

    iput v1, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mState:I

    goto :goto_f

    :pswitch_20
    const v0, 0x3020092

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mState:I

    goto :goto_f

    :pswitch_28
    const v0, 0x302008f

    iput v0, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mIcon:I

    iput v2, p0, Lcom/android/wanam/systemui/StBar/SoundButton;->mState:I

    goto :goto_f

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_20
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method
