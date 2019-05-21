.class final Lcom/android/camera/ui/PreviewOverlay$1$2;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewOverlay$1;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/ui/PreviewOverlay$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay$1;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$1$2;->this$1:Lcom/android/camera/ui/PreviewOverlay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Float;

    .line 1113
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1$2;->this$1:Lcom/android/camera/ui/PreviewOverlay$1;

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->access$200(Lcom/android/camera/ui/PreviewOverlay;F)V

    .line 110
    return-void
.end method
