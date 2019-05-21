.class final Lcom/google/android/apps/lightcycle/PanoramaModule$9;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/Callback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$9;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 532
    .line 1535
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$9;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$9$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$9$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method
