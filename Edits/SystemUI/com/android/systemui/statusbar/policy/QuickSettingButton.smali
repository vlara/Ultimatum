.class public Lcom/android/systemui/statusbar/policy/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;
    }
.end annotation


# instance fields
.field private mActivateStatus:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDimIconID:I

.field public mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mTextID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x7f03001c

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0e0092

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/R$styleable;->QuickSettingButton:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mDimIconID:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID2:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickSettingButton;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v1, "TW_TAG"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->init()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v1

    goto :goto_27
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setEnabled(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_1a

    :goto_a
    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setEnabled(Z)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_a

    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_a

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
        :pswitch_a
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "TW_TAG"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;->deinit()V

    return-void
.end method

.method public setActivateStatus(I)V
    .locals 6

    const v5, 0x7f020107

    const v4, 0x7f020106

    const/4 v3, -0x1

    const-string v0, "STATUSBAR-QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivateStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - 1:on, 2:off, 3:dim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_ae

    :goto_2c
    return-void

    :pswitch_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    :pswitch_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    :pswitch_5f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    :pswitch_7b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    :pswitch_94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_7b
        :pswitch_5f
        :pswitch_46
        :pswitch_94
    .end packed-switch
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/QuickSettingButton$Listener;

    return-void
.end method
