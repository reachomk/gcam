.class public Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.source "MetadataImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;,
        Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;
    }
.end annotation


# instance fields
.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    .line 55
    sget-object v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->add(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 56
    return-void
.end method

.method public static forImage(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    return-object v0
.end method

.method private getOrNull(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final add(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/imagemanagement/MetadataImage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<TT;>;TT;)",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public final getChecked(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getOrNull(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No value found for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Keys;->TOTAL_CAPTURE_RESULT:Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getOrNull(Lcom/android/camera/one/v2/imagemanagement/MetadataImage$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final hasImageData()Z
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getFormat()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
