.class final Lcom/google/android/apps/lightcycle/PanoramaModule$5;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
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
    .line 440
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isTakingPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo is being taken, ignoring cancel button."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$5;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0
.end method
