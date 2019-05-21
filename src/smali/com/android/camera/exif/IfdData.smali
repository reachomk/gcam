.class final Lcom/android/camera/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final exifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/camera/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final ifdId:I

.field private offsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/exif/IfdData;->offsetToNextIfd:I

    .line 34
    iput p1, p0, Lcom/android/camera/exif/IfdData;->ifdId:I

    .line 35
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/camera/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 118
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_1
    instance-of v0, p1, Lcom/android/camera/exif/IfdData;

    if-eqz v0, :cond_4

    .line 122
    check-cast p1, Lcom/android/camera/exif/IfdData;

    .line 1058
    iget v0, p1, Lcom/android/camera/exif/IfdData;->ifdId:I

    .line 123
    iget v3, p0, Lcom/android/camera/exif/IfdData;->ifdId:I

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getTagCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/exif/IfdData;->getTagCount()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 124
    invoke-virtual {p1}, Lcom/android/camera/exif/IfdData;->getAllTags()[Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 125
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 126
    invoke-virtual {v6}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v0

    invoke-static {v0}, Lcom/android/camera/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifTag;

    .line 130
    invoke-virtual {v6, v0}, Lcom/android/camera/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 131
    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 134
    goto :goto_0

    :cond_4
    move v0, v2

    .line 137
    goto :goto_0
.end method

.method protected final getAllTags()[Lcom/android/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/exif/ExifTag;

    return-object v0
.end method

.method protected final getId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/camera/exif/IfdData;->ifdId:I

    return v0
.end method

.method protected final getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/exif/IfdData;->offsetToNextIfd:I

    return v0
.end method

.method protected final getTag(S)Lcom/android/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifTag;

    return-object v0
.end method

.method protected final getTagCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected final removeTag(S)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method protected final setOffsetToNextIfd(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/android/camera/exif/IfdData;->offsetToNextIfd:I

    .line 100
    return-void
.end method

.method protected final setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/camera/exif/IfdData;->ifdId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifTag;->setIfd(I)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/exif/IfdData;->exifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/exif/ExifTag;

    return-object v0
.end method
