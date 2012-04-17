.class Lcom/android/settings/ASensorSettings$SettingsHandler;
.super Landroid/os/Handler;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$SettingsHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/high16 v4, 0x4220

    const-wide/16 v8, 0x32

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 316
    new-array v1, v6, [F

    .line 317
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 319
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d8

    .line 365
    :goto_13
    return-void

    .line 321
    :pswitch_14
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b06dd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getPoint([F)[F

    .line 323
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 324
    aget v2, v1, v7

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    .line 325
    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    .line 326
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    .line 328
    iput v6, v0, Landroid/os/Message;->what:I

    .line 329
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    invoke-virtual {p0, v5}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    goto :goto_13

    .line 334
    :pswitch_59
    sget v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    if-ltz v2, :cond_89

    .line 335
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->mAniGapX:F

    sget v4, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/settings/ASensorSettings;->mAniGapY:F

    neg-float v4, v4

    sget v5, Lcom/android/settings/ASensorSettings;->mAniCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 338
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    .line 339
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 340
    iput v6, v0, Landroid/os/Message;->what:I

    .line 341
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_13

    .line 344
    :cond_89
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 345
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 346
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 347
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->mAniCount:I

    goto/16 :goto_13

    .line 352
    :pswitch_98
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings$SettingsHandler;->removeMessages(I)V

    .line 353
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->runAccCalibration(I)I

    .line 354
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1100(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    iget-object v3, v3, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$SensorHandler;

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$1200(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 357
    invoke-static {v7}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    .line 358
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mDrawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v5}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1000(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b06dc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$SettingsHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #calls: Lcom/android/settings/ASensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1300(Lcom/android/settings/ASensorSettings;)V

    goto/16 :goto_13

    .line 319
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_14
        :pswitch_59
        :pswitch_98
    .end packed-switch
.end method
