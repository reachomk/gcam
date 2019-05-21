.class final Lcom/android/camera/session/CaptureSessionImpl$6;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/StackedCaptureSession$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->createStackedSession()Lcom/android/camera/session/StackedCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onStackedItemFailed(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1308(Lcom/android/camera/session/CaptureSessionImpl;)I

    .line 761
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1400(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 762
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/session/StackedSessionListener;->onStackedItemFailed(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :cond_0
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onStackedItemFinished(Landroid/net/Uri;Lcom/google/common/base/Optional;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1308(Lcom/android/camera/session/CaptureSessionImpl;)I

    .line 744
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$600(Lcom/android/camera/session/CaptureSessionImpl;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1400(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 749
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/session/StackedSessionListener;->onStackedItemFinished(Landroid/net/Uri;Lcom/google/common/base/Optional;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 753
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/session/StackedSessionListener;->onStackedItemFailed(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onThumbnailUpdated$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNM8SJ1ETGM4R355T274OBNC5H6OPAICLPMUTBICDIJMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONL6T31CDLMAP23C5O78TBICL9MASRJD5NMS92JEHGM6QQ9EHIMQL3PE1IJMAAM(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;II)V
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$1200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/StackedSessionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/session/StackedSessionListener;->onThumbnailUpdated$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNM8SJ1ETGM4R355T274OBNC5H6OPAICLPMUTBICDIJMIACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONL6T31CDLMAP23C5O78TBICL9MASRJD5NMS92JEHGM6QQ9EHIMQL3PE1IJMAAM(Landroid/net/Uri;Lcom/bumptech/glide/load/resource/drawable/DrawableResource;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :cond_0
    monitor-exit p0

    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
