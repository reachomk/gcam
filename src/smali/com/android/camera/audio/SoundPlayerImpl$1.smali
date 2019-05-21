.class final Lcom/android/camera/audio/SoundPlayerImpl$1;
.super Ljava/lang/Object;
.source "SoundPlayerImpl.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/audio/SoundPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/audio/SoundPlayerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/audio/SoundPlayerImpl;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/audio/SoundPlayerImpl$1;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/audio/SoundPlayerImpl$1;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    invoke-static {v0}, Lcom/android/camera/audio/SoundPlayerImpl;->access$000(Lcom/android/camera/audio/SoundPlayerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/audio/SoundPlayerImpl$1;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    invoke-static {v0}, Lcom/android/camera/audio/SoundPlayerImpl;->access$100(Lcom/android/camera/audio/SoundPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    monitor-exit v1

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/audio/SoundPlayerImpl$1;->this$0:Lcom/android/camera/audio/SoundPlayerImpl;

    invoke-static {v0, p2}, Lcom/android/camera/audio/SoundPlayerImpl;->access$200(Lcom/android/camera/audio/SoundPlayerImpl;I)Lcom/android/camera/audio/SoundPlayerImpl$SoundInfo;

    move-result-object v2

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez p3, :cond_1

    const/4 v0, 0x1

    .line 64
    :goto_1
    iget-object v1, v2, Lcom/android/camera/audio/SoundPlayerImpl$SoundInfo;->isLoaded:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
