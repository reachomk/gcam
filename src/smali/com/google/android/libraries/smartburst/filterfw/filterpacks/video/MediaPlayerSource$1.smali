.class Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource$1;
.super Ljava/lang/Object;
.source "MediaPlayerSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;

    const-string v1, "MediaPlayer is prepared"

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;->access$000(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource$1;->this$0:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;->access$100(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/video/MediaPlayerSource;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 357
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
