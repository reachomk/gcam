.class final Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;
.super Ljava/lang/Object;
.source "ImageReaderImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameAllocatorImpl"
.end annotation


# instance fields
.field private final jointCapacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 53
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$000(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->jointCapacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 56
    return-void
.end method


# virtual methods
.method public final createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;
    .locals 9

    .prologue
    .line 117
    new-instance v2, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 119
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;

    invoke-direct {v3, p3, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/SelectiveFrameStore;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;I)V

    .line 120
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 122
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->jointCapacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v0, v3, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;Lcom/google/android/apps/camera/async/BufferQueueController;I)V

    .line 124
    invoke-virtual {v2, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 139
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$000(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;->addResidualTicketHolder(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v5

    .line 140
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$000(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;->addResidualTicketHolder(Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool$ResidualTicketHolder;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 141
    invoke-virtual {v2, v5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 142
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 148
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 150
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$200(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Landroid/view/Surface;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$300(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    move-result-object v0

    invoke-virtual {v4, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->getImageSink(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    .line 153
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 155
    goto :goto_1

    .line 158
    :cond_1
    invoke-static {v5}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/camera/one/v2/core/FreeFrameTarget;->create(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/ResidualFrameStoreImpl;

    invoke-direct {v1, v3, v0, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/ResidualFrameStoreImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;Lcom/android/camera/one/v2/core/FrameTarget;Lcom/google/android/apps/camera/async/Lifetime;)V

    return-object v1
.end method

.method public final createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 10

    .prologue
    .line 63
    new-instance v2, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v2}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 75
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$100(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->createChildLifetime()Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 79
    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameQueue;->create()Lcom/android/camera/one/v2/imagemanagement/frame/FrameQueue;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 86
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->jointCapacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    .line 87
    invoke-virtual {v2, v4}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 89
    new-instance v5, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v4, v3, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;Lcom/google/android/apps/camera/async/BufferQueueController;I)V

    .line 91
    invoke-virtual {v2, v5}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 98
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$200(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Landroid/view/Surface;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$300(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    move-result-object v0

    invoke-virtual {v5, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;->getImageSink(I)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;->addRoute(Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor$ImageRoute;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    .line 101
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 103
    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v6}, Lcom/android/camera/one/v2/core/FrameServerModule;->forListeners(Ljava/util/Collection;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/one/v2/core/FreeFrameTarget;->create(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameStreamImpl;-><init>(Lcom/android/camera/one/v2/core/FrameTarget;Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/async/BufferQueue;Lcom/android/camera/one/v2/imagemanagement/ticketpool/ReservableTicketPool;)V

    return-object v1
.end method

.method public final getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->jointCapacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;->getAvailableTicketCount()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxFrameCount()I
    .locals 3

    .prologue
    .line 165
    const v0, 0x7fffffff

    .line 166
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    .line 167
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->access$400(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 168
    goto :goto_0

    .line 169
    :cond_0
    return v1
.end method
