.class Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1990
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 1991
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_e

    .line 1992
    const/4 v1, 0x1

    #calls: Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1800(Lcom/android/settings/DataUsageSummary;Z)V

    .line 1994
    :cond_e
    return-void
.end method
