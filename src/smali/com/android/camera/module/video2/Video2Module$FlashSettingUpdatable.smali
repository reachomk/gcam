.class final Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;
.super Ljava/lang/Object;
.source "Video2Module.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlashSettingUpdatable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2Module;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/video2/Video2Module;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/video2/Video2Module;B)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;-><init>(Lcom/android/camera/module/video2/Video2Module;)V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 387
    .line 1391
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$300(Lcom/android/camera/module/video2/Video2Module;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1392
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2Module$FlashSettingUpdatable;->this$0:Lcom/android/camera/module/video2/Video2Module;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2Module;->access$400(Lcom/android/camera/module/video2/Video2Module;)Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/video2/Video2OpenedCamcorderDevice;->onFlashStateChanged()V

    .line 1397
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
