.class public Lcom/android/systemui/statusbar/phone/CaptureParentView;
.super Landroid/widget/FrameLayout;
.source "CaptureParentView.java"


# instance fields
.field mCaptureView:Landroid/widget/ImageView;

.field private mCaptured:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getBitmapScreenShot()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v8, 0x2

    new-array v3, v8, [F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    aput v8, v3, v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    aput v8, v3, v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/CaptureParentView;->getDegreesForRotation(I)F

    move-result v2

    cmpl-float v8, v2, v11

    if-lez v8, :cond_a4

    move v4, v6

    :goto_2d
    if-eqz v4, :cond_4f

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v3, v7

    aget v8, v3, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    aput v8, v3, v6

    :cond_4f
    aget v8, v3, v7

    float-to-int v8, v8

    aget v9, v3, v6

    float-to-int v9, v9

    const v10, 0x13c68

    invoke-static {v8, v9, v7, v10}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v4, :cond_9a

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v8, 0x43b4

    sub-float/2addr v8, v2

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    aget v8, v3, v7

    neg-float v8, v8

    div-float/2addr v8, v12

    aget v6, v3, v6

    neg-float v6, v6

    div-float/2addr v6, v12

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v0, v11, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    :cond_9a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_a3
    return-object v0

    :cond_a4
    move v4, v7

    goto :goto_2d
.end method

.method private getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/high16 v0, 0x42b4

    goto :goto_4

    :pswitch_8
    const/high16 v0, 0x4334

    goto :goto_4

    :pswitch_b
    const/high16 v0, 0x4387

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mVisibility:I

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptured:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mVisibility:I

    const v0, 0x7f0e0036

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CaptureParentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CaptureParentView;->getBitmapScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptured:Z

    :cond_11
    :goto_11
    iput p2, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mVisibility:I

    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptured:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptureView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CaptureParentView;->mCaptured:Z

    goto :goto_11
.end method
