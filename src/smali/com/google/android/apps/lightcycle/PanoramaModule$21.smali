.class final Lcom/google/android/apps/lightcycle/PanoramaModule$21;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->pauseCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$21;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$21;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$21;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2400(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->freeGLMemory()V

    .line 1483
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$21;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2402(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 1485
    :cond_0
    return-void
.end method
