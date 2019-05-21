.class final Lcom/android/camera/ui/PreviewOverlay$2;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewOverlay;->addZoomChangedListener(Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;

.field private synthetic val$listener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewOverlay;Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iput-object p2, p0, Lcom/android/camera/ui/PreviewOverlay$2;->val$listener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$2;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewOverlay$2;->val$listener:Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->removeZoomChangedListener(Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;)V

    .line 194
    return-void
.end method
