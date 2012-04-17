.class public abstract Lcom/android/wanam/systemui/StBar/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/wanam/systemui/StBar/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x5

    :goto_8
    return v0

    :pswitch_9
    const/4 v0, 0x2

    goto :goto_8

    :pswitch_b
    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    packed-switch p2, :pswitch_data_68

    :goto_7
    if-eqz v0, :cond_33

    iget-boolean v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_33

    const-string v1, "StateTracker"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string v1, "StateTracker"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    iput-boolean v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_33
    return-void

    :pswitch_34
    iput-boolean v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_3d
    iput-boolean v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_46
    iput-boolean v4, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_4f
    iput-boolean v4, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :cond_58
    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_31

    iput-boolean v4, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    iget-object v1, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_31

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_34
        :pswitch_46
        :pswitch_4f
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wanam/systemui/StBar/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    :cond_9
    :goto_9
    :pswitch_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2a

    iput-boolean v2, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :goto_15
    return-void

    :pswitch_16
    const/4 v1, 0x0

    goto :goto_9

    :pswitch_18
    const/4 v1, 0x1

    goto :goto_9

    :pswitch_1a
    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    :goto_27
    goto :goto_9

    :cond_28
    const/4 v1, 0x0

    goto :goto_27

    :cond_2a
    iput-boolean v2, p0, Lcom/android/wanam/systemui/StBar/StateTracker;->mInTransition:Z

    invoke-virtual {p0, p1, v1}, Lcom/android/wanam/systemui/StBar/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_15

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_16
        :pswitch_18
        :pswitch_9
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method
