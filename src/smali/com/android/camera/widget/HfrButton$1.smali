.class final Lcom/android/camera/widget/HfrButton$1;
.super Ljava/lang/Object;
.source "HfrButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/HfrButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/HfrButton;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/HfrButton;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/widget/HfrButton$1;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$1;->this$0:Lcom/android/camera/widget/HfrButton;

    iget-object v1, p0, Lcom/android/camera/widget/HfrButton$1;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v1}, Lcom/android/camera/widget/HfrButton;->access$000(Lcom/android/camera/widget/HfrButton;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/widget/HfrButton;->access$100(Lcom/android/camera/widget/HfrButton;IZ)V

    .line 57
    return-void
.end method
