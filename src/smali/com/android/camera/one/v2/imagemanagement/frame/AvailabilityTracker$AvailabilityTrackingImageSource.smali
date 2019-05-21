.class public final Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;
.super Ljava/lang/Object;
.source "AvailabilityTracker.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AvailabilityTrackingImageSource"
.end annotation


# instance fields
.field private final capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 65
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    .line 68
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->getTotalCapacity()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 66
    invoke-static {p2, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 69
    return-void
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR6E9GMQP9F85R62QBCC5H6IR39EHSL8SJ1CDLMASH485R62QBCC5H6IR39EHSL8SJ1CDLMIRJ795MM2PR5ADNNASJ3CKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHFD5MM2PR5DLGMSOB7CLMMARJK5TQ6IORBCLQ70RRFDGNL8QB3DDIN8K3FDTM3M___(Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->capacity$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    return-object v0
.end method


# virtual methods
.method public final varargs createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    array-length v3, p1

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 93
    instance-of v5, v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;

    invoke-static {v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 94
    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 99
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;

    .line 100
    iget-object v2, v2, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 105
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 104
    invoke-interface {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    .line 107
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$FrameAllocatorWrapper;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;B)V

    return-object v2
.end method

.method public final getTotalCapacity()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/AvailabilityTracker$AvailabilityTrackingImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->getTotalCapacity()I

    move-result v0

    return v0
.end method
