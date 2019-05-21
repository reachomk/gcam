.class final Lcom/android/camera/ui/wirers/ZoomUiWirer$1;
.super Ljava/lang/Object;
.source "ZoomUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/wirers/ZoomUiWirer;->wire()V
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
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$previewOverlay:Lcom/android/camera/ui/PreviewOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer$1;->val$previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    check-cast p1, Landroid/graphics/RectF;

    .line 1046
    iget-object v0, p0, Lcom/android/camera/ui/wirers/ZoomUiWirer$1;->val$previewOverlay:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PreviewOverlay;->setPreviewRect(Landroid/graphics/RectF;)V

    .line 43
    return-void
.end method
