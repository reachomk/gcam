.class final Lcom/android/camera/widget/Cling$1;
.super Ljava/lang/Object;
.source "Cling.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Cling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/Cling;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Cling;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/Cling;->access$002(Lcom/android/camera/widget/Cling;Z)Z

    .line 34
    iget-object v0, p0, Lcom/android/camera/widget/Cling$1;->this$0:Lcom/android/camera/widget/Cling;

    invoke-virtual {v0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    .line 35
    return-void
.end method
