.class public Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;
.super Ljava/lang/Object;
.source "ManagedImageWriter.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WritableImageCreator"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

.field private tickets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2056
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->lock:Ljava/lang/Object;

    .line 2058
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->tickets:Ljava/util/Queue;

    .line 2059
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 2090
    new-instance v0, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    .line 2091
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2092
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->tickets:Ljava/util/Queue;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/CloseableList;->addAll(Ljava/util/Collection;)Z

    .line 2093
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->tickets:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 2094
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/CloseableList;->close()V

    .line 2096
    return-void

    .line 2094
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createImage(J)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 2064
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2065
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->tickets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 2066
    const-string v2, "Cannot create more images than were reserved, or create images after closed"

    invoke-static {v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->access$000(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageWriterProxy;->dequeueInputImage(J)Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    move-result-object v2

    .line 2070
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v0, v5}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter$CopyingWritableImage;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/android/camera/audio/SingleUseSoundPlayer;B)V

    monitor-exit v1

    return-object v3

    .line 2071
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createImage(JLcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 1080
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->createImage(J)Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImage;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagewriter/ManagedImageWriter$WritableImageCreator;->this$0:Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBNE9KN8PBI5T1MUS3PD5N6EJB1DPGMEPB495MM2PR5ATP6IT35E8TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TQN8QBC5T4MQOB7CL1MUS39CLP3M___(Lcom/android/camera/one/v2/imagemanagement/imagewriter/CopyingManagedImageWriter;)Lcom/google/android/libraries/smartburst/training/MetadataSerializer;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/google/android/libraries/smartburst/training/MetadataSerializer;->copyImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    invoke-interface {p3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 1085
    return-object v0

    .line 1083
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    throw v0
.end method
