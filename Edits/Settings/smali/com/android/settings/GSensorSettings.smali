.class public Lcom/android/settings/GSensorSettings;
.super Landroid/app/Activity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GSensorSettings$1;,
        Lcom/android/settings/GSensorSettings$SettingsHandler;,
        Lcom/android/settings/GSensorSettings$GSensorSettingsView;,
        Lcom/android/settings/GSensorSettings$SensorHandler;
    }
.end annotation


# static fields
.field static mAniCount:I

.field static mAniGapX:F

.field static mAniGapY:F

.field private static mCirclePaint:Landroid/graphics/Paint;

.field private static mSampleCount:I


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mCalButton:Landroid/widget/Button;

.field private mDrawLayout:Landroid/widget/LinearLayout;

.field private mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

.field mHandler:Lcom/android/settings/GSensorSettings$SettingsHandler;

.field mSensorListner:Lcom/android/settings/GSensorSettings$SensorHandler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 58
    const/16 v0, 0x163

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 59
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    .line 270
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    sput p0, Lcom/android/settings/GSensorSettings;->mSampleCount:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/GSensorSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/GSensorSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->diplayError()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/GSensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/GSensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/GSensorSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/GSensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method private diplayCompleted()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    const v1, 0x7f0b06d8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 193
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    return-void
.end method

.method private diplayError()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    const v1, 0x7f0b06d7

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 115
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 116
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 117
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/GSensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    .line 122
    sget-object v0, Lcom/android/settings/GSensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    sget-object v0, Lcom/android/settings/GSensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    sget-object v0, Lcom/android/settings/GSensorSettings;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 140
    :goto_7
    return-void

    .line 132
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$SettingsHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/GSensorSettings$SettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 129
    nop

    :pswitch_data_20
    .packed-switch 0x7f0800a2
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "800x480"

    const-string v1, "1280x800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 100
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_X:I

    .line 101
    const/16 v0, 0x24b

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CENTER_Y:I

    .line 102
    const/16 v0, 0x38

    iput v0, p0, Lcom/android/settings/GSensorSettings;->ICON_RADIUS:I

    .line 103
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/settings/GSensorSettings;->CIRCLE_RADIUS:I

    .line 105
    :cond_1e
    new-instance v0, Lcom/android/settings/GSensorSettings$SettingsHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$SettingsHandler;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$SettingsHandler;

    .line 106
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->setContentView(I)V

    .line 107
    new-instance v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;-><init>(Lcom/android/settings/GSensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    .line 108
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/settings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawLayout:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/GSensorSettings;->init()V

    .line 111
    new-instance v0, Lcom/android/settings/GSensorSettings$SensorHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/GSensorSettings$SensorHandler;-><init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$SensorHandler;

    .line 112
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$SensorHandler;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$SettingsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mHandler:Lcom/android/settings/GSensorSettings$SettingsHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/GSensorSettings$SettingsHandler;->removeMessages(I)V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    sput v3, Lcom/android/settings/GSensorSettings;->mSampleCount:I

    .line 146
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_15

    .line 147
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v0, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mDrawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 150
    :cond_15
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 151
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mText:Landroid/widget/TextView;

    const v1, 0x7f0b06d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_21
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mCalButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/GSensorSettings;->mSensorListner:Lcom/android/settings/GSensorSettings$SensorHandler;

    iget-object v2, p0, Lcom/android/settings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    .line 157
    return-void
.end method
