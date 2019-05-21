.class final Lcom/android/camera/ui/PreviewOverlay$1$1;
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
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$1$1;->this$1:Lcom/android/camera/ui/PreviewOverlay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Float;

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$1$1;->this$1:Lcom/android/camera/ui/PreviewOverlay$1;

    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$1;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 1105
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onMaxZoomChanged$5132ILG_()V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
