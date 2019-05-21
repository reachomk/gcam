.class public final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;
.super Ljava/lang/Object;
.source "TuningDataCollectorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TuningDataImpl"
.end annotation


# instance fields
.field private baseImageTimestamp:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final inputMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private npfParameters:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rawInputImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private reprocessingMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private reprocessingYuvImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final timestamps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final yuvInputImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->title:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->timestamps:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->yuvInputImages:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->rawInputImages:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->inputMetadata:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->baseImageTimestamp:Lcom/google/common/base/Optional;

    .line 54
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->npfParameters:Lcom/google/common/base/Optional;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->reprocessingYuvImages:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->reprocessingMetadata:Ljava/util/List;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->timestamps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->baseImageTimestamp:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->baseImageTimestamp:Lcom/google/common/base/Optional;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->yuvInputImages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->rawInputImages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->inputMetadata:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getBaseImageTimestamp()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->baseImageTimestamp:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getInputMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->inputMetadata:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getNpfParameters()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->npfParameters:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public final getRawInputImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->rawInputImages:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getReprocessingMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->reprocessingMetadata:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getReprocessingYuvImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->reprocessingYuvImages:Ljava/util/List;

    return-object v0
.end method

.method public final getTimestamps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->timestamps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getYuvInputImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollectorImpl$TuningDataImpl;->yuvInputImages:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
