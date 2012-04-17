.class Lcom/android/settings/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1038
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1000(Lcom/android/settings/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1053
    :goto_8
    return-void

    .line 1040
    :cond_9
    move v1, p2

    .line 1041
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1043
    if-eqz v1, :cond_27

    .line 1044
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x1

    #calls: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1200(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1052
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_8

    .line 1048
    :cond_27
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$5;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_20
.end method
