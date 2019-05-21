.class public Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DummyInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final captureProgress:Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

.field private final captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

.field private final oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

.field private final processingProgress:Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;)V
    .locals 0

    .prologue
    .line 3148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3149
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    .line 3150
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    .line 3151
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->captureProgress:Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    .line 3152
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->processingProgress:Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    .line 3153
    return-void
.end method

.method static computeArrayListCapacity(I)I
    .locals 4

    .prologue
    .line 2121
    const-string v0, "arraySize"

    invoke-static {p0, v0}, Lcom/google/common/collect/Platform;->checkNonnegative(ILjava/lang/String;)I

    .line 2124
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static create$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCLP74RRI5T9MGRRK8PGMIR3LE9IKGOBECHM6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2US38DTQ6UBQGD5HN8TBICLA62QR5E8I50OBIC5MMAT35E9PJM___(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/android/camera/error/ShotFailureHandler;)Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
    .locals 3

    .prologue
    .line 3160
    new-instance v0, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/camera/one/v2/photo/common/CaptureProgressImpl;-><init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/session/StackableSession;)V

    .line 3162
    new-instance v1, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/android/camera/one/v2/photo/common/ProcessingProgressImpl;-><init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/error/ShotFailureHandler;)V

    .line 3165
    new-instance v2, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;-><init>(Lcom/google/android/gms/googlehelp/internal/common/zzd;Lcom/android/camera/session/StackableSession;Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;)V

    return-object v2
.end method

.method static equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2997
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 3017
    :cond_0
    :goto_0
    return v0

    .line 3000
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 3001
    goto :goto_0

    .line 3003
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 3004
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 3005
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_3

    move v0, v1

    .line 3006
    goto :goto_0

    .line 3008
    :cond_3
    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    move v2, v1

    .line 3010
    :goto_1
    if-ge v2, v3, :cond_0

    .line 3011
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 3012
    goto :goto_0

    .line 3010
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3017
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_0
.end method

.method static indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3038
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 3039
    invoke-static {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 3047
    :goto_0
    return v0

    .line 3041
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 3042
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3043
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3044
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    goto :goto_0

    .line 3047
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3052
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3053
    if-nez p1, :cond_2

    .line 3054
    :goto_0
    if-ge v0, v1, :cond_3

    .line 3055
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3066
    :goto_1
    return v0

    .line 3054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3060
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v0, v1, :cond_3

    .line 3061
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3066
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3073
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 3074
    invoke-static {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 3082
    :goto_0
    return v0

    .line 3076
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 3077
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3078
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3079
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_0

    .line 3082
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 3087
    if-nez p1, :cond_2

    .line 3088
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 3089
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3100
    :cond_0
    :goto_1
    return v0

    .line 3088
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3094
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 3095
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3094
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3100
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2145
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2148
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    .line 2149
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2163
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2164
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 2165
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 2111
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->computeArrayListCapacity(I)I

    move-result v0

    .line 2114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2115
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2116
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2188
    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/google/common/collect/Platform;->checkNonnegative(ILjava/lang/String;)I

    .line 2189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2823
    instance-of v0, p0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 2824
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 2830
    :goto_0
    return-object v0

    .line 2825
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Lists$ReverseList;

    if-eqz v0, :cond_1

    .line 2826
    check-cast p0, Lcom/google/common/collect/Lists$ReverseList;

    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->getForwardList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2827
    :cond_1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    .line 2828
    new-instance v0, Lcom/google/common/collect/Lists$RandomAccessReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$RandomAccessReverseList;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 2830
    :cond_2
    new-instance v0, Lcom/google/common/collect/Lists$ReverseList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$ReverseList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getCaptureProgress()Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->captureProgress:Lcom/android/camera/one/v2/photo/PictureTaker$CaptureProgress;

    return-object v0
.end method

.method public getCaptureSession$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR()Lcom/android/camera/session/StackableSession;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    return-object v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 816
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 821
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final synthetic getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .prologue
    .line 1811
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getOneCameraParameters$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ14H86GRRKDT1M2S3KELP6AK31E9GMQPBKCLP76EO_()Lcom/google/android/gms/googlehelp/internal/common/zzd;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3174
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->oneCameraParameters$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP6292GD1NN8RQ3C5O78TBICL862SJ1DLIN8PBIECTG____:Lcom/google/android/gms/googlehelp/internal/common/zzd;

    return-object v0
.end method

.method public getProcessingProgress()Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;
    .locals 1

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->processingProgress:Lcom/android/camera/one/v2/photo/PictureTaker$ProcessingProgress;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 826
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
