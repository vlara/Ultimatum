.class public Lcom/android/wanam/systemui/StBar/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;,
        Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleFlashlight|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field public static final EXPANDED_SCREENTIMEOUT_MODE:Ljava/lang/String; = "expanded_screentimeout_mode"

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

.field private LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

.field private mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/wanam/systemui/StBar/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/wanam/systemui/StBar/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x30a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wanam/systemui/StBar/PowerWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wanam/systemui/StBar/PowerWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/wanam/systemui/StBar/PowerWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->animateCollapse()V

    return-void
.end method

.method private animateCollapse()V
    .locals 3

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    return-void
.end method

.method public static getView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/wanam/systemui/StBar/PowerWidget;
    .locals 2

    const v1, 0x3030003

    invoke-static {p0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-virtual {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupWidget()V

    return-object v0
.end method

.method private needScrollBar(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    iget v3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    if-le p1, v3, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    move v1, v2

    goto :goto_15

    :cond_18
    iget v3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    if-gt p1, v3, :cond_15

    move v1, v2

    goto :goto_15
.end method

.method private observeAllObserver()V
    .locals 3

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->observe()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Lcom/android/wanam/systemui/StBar/PowerWidget$1;)V

    iput-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    :cond_c
    return-void
.end method

.method private setupSettingsObserver()V
    .locals 6

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->unobserveAllObserver()V

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_widget_buttons"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_55
    return-void
.end method

.method private unobserveAllObserver()V
    .locals 3

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v1}, Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetSettingsObserver;->unobserve()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 4

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    sget-object v1, Lcom/android/wanam/systemui/StBar/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_22
    return-void

    :cond_23
    sget-object v1, Lcom/android/wanam/systemui/StBar/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_22
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerWidget$1;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerWidget$1;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/wanam/systemui/StBar/PowerWidget$2;

    invoke-direct {v0, p0}, Lcom/android/wanam/systemui/StBar/PowerWidget$2;-><init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e
    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->unobserveAllObserver()V

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-static {p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-static {p1}, Lcom/android/wanam/systemui/StBar/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setupWidget()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v9, "PowerWidget"

    const-string v10, "Clearing any old widget stuffs"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->removeAllViews()V

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_17
    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->unobserveAllObserver()V

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->unloadAllButtons()V

    const-string v9, "PowerWidget"

    const-string v10, "Setting up widget"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "expanded_widget_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3b

    const-string v9, "PowerWidget"

    const-string v10, "Default buttons being loaded"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleFlashlight|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

    :cond_3b
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Button list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x0

    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v6, 0x0

    :goto_6a
    if-ge v6, v7, :cond_b8

    aget-object v1, v0, v6

    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x3030002

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/wanam/systemui/StBar/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_9f

    sget-object v9, Lcom/android/wanam/systemui/StBar/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    :goto_9c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    :cond_9f
    const-string v9, "PowerWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error setting up button: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_b8
    invoke-direct {p0, v2}, Lcom/android/wanam/systemui/StBar/PowerWidget;->needScrollBar(I)Z

    move-result v9

    if-eqz v9, :cond_112

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x3030004

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    iput-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v12}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/android/wanam/systemui/StBar/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/android/wanam/systemui/StBar/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, v10}, Lcom/android/wanam/systemui/StBar/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_ee
    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupBroadcastReceiver()V

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v5

    const-string v9, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/wanam/systemui/StBar/PowerWidget;->mBroadcastReceiver:Lcom/android/wanam/systemui/StBar/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->setupSettingsObserver()V

    invoke-direct {p0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->observeAllObserver()V

    return-void

    :cond_112
    sget-object v9, Lcom/android/wanam/systemui/StBar/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v8, v9}, Lcom/android/wanam/systemui/StBar/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ee
.end method

.method public updateWidget()V
    .locals 0

    invoke-static {}, Lcom/android/wanam/systemui/StBar/PowerButton;->updateAllButtons()V

    return-void
.end method
