.class final Lcom/google/android/apps/refocus/RefocusModule$13$1;
.super Ljava/lang/Thread;
.source "RefocusModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/refocus/RefocusModule$13;->onPictureTaken$51DK4J33DTMIUOBECHP6UQB45TINGBR3C5MMASJ168NN0RRIEHGM4QBCD5Q7IBQ3C5MMASJ185JMARJK4H1M2RB5E9GL0SJFF1SJMAAM([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/refocus/RefocusModule$13;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule$13;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$13$1;->this$1:Lcom/google/android/apps/refocus/RefocusModule$13;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$13$1;->this$1:Lcom/google/android/apps/refocus/RefocusModule$13;

    iget-object v0, v0, Lcom/google/android/apps/refocus/RefocusModule$13;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$800(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/google/android/apps/refocus/camera/CameraPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/camera/CameraPreview;->startPreview(Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 742
    return-void
.end method
