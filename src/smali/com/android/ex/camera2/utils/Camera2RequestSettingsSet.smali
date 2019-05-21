.class public final Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;
.super Ljava/lang/Object;
.source "Camera2RequestSettingsSet.java"


# instance fields
.field private final mDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRevision:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to copy null Camera2RequestSettingsSet"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    .line 63
    iget-wide v0, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 64
    return-void
.end method

.method private get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received a null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final varargs createRequest(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to create request using null CameraDevice"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1248
    invoke-direct {p0, v0}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 1249
    if-eqz v3, :cond_1

    .line 1250
    invoke-virtual {v1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :cond_2
    array-length v2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, p3, v0

    .line 239
    if-nez v3, :cond_3

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to add null Surface as request target"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_3
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public final matches(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Received a null key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final union(Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;)Z
    .locals 4

    .prologue
    .line 206
    if-eqz p1, :cond_0

    if-ne p1, p0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mDictionary:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 211
    iget-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/ex/camera2/utils/Camera2RequestSettingsSet;->mRevision:J

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method
