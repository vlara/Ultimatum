.class public Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPeekPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# instance fields
.field mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1f

    if-ltz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1f

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x1

    goto :goto_1e
.end method

.method public isInContentArea(II)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    if-lt p1, v1, :cond_26

    if-ge p1, v2, :cond_26

    if-lt p2, v3, :cond_26

    if-ge p2, v0, :cond_26

    const/4 v4, 0x1

    :goto_25
    return v4

    :cond_26
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->resetNotificationPeekFadeTimer()V

    const/4 v0, 0x0

    return v0
.end method
