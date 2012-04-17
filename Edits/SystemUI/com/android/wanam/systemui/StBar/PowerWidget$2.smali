.class Lcom/android/wanam/systemui/StBar/PowerWidget$2;
.super Ljava/lang/Object;
.source "PowerWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wanam/systemui/StBar/PowerWidget;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;


# direct methods
.method constructor <init>(Lcom/android/wanam/systemui/StBar/PowerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$2;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wanam/systemui/StBar/PowerWidget$2;->this$0:Lcom/android/wanam/systemui/StBar/PowerWidget;

    #calls: Lcom/android/wanam/systemui/StBar/PowerWidget;->animateCollapse()V
    invoke-static {v0}, Lcom/android/wanam/systemui/StBar/PowerWidget;->access$300(Lcom/android/wanam/systemui/StBar/PowerWidget;)V

    const/4 v0, 0x1

    return v0
.end method
