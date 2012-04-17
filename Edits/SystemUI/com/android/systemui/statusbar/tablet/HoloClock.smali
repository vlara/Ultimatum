.class public Lcom/android/systemui/statusbar/tablet/HoloClock;
.super Landroid/widget/FrameLayout;
.source "HoloClock.java"


# static fields
.field private static sBackgroundType:Landroid/graphics/Typeface;

.field private static sForegroundType:Landroid/graphics/Typeface;

.field private static sSolidType:Landroid/graphics/Typeface;


# instance fields
.field private mAttached:Z

.field private mBgText:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mFgText:Landroid/widget/TextView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSolidText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/tablet/HoloClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/HoloClock$1;-><init>(Lcom/android/systemui/statusbar/tablet/HoloClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/tablet/HoloClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/HoloClock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getTimeText()Ljava/lang/CharSequence;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_39

    const v2, 0x104007e

    :goto_d
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "a"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormatString:Ljava/lang/String;

    :goto_2e
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_39
    const v2, 0x104007d

    goto :goto_d

    :cond_3d
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_2e
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-nez v1, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_31
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->updateClock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mAttached:Z

    :cond_13
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    if-nez v0, :cond_1f

    const-string v0, "/system/fonts/AndroidClock_Solid.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    :cond_1f
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sBackgroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3b
    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sForegroundType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_51
    const v0, 0x7f0e0053

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/statusbar/tablet/HoloClock;->sSolidType:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_67
    return-void
.end method

.method final updateClock()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/HoloClock;->getTimeText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mBgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mFgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/HoloClock;->mSolidText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    return-void
.end method
