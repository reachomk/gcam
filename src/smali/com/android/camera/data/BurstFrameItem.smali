.class public final Lcom/android/camera/data/BurstFrameItem;
.super Lcom/android/camera/data/PhotoItemProxy;
.source "BurstFrameItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/PhotoItemProxy;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/data/BurstFrameItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isCover:Ljava/lang/Boolean;

.field private isExtra:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/PhotoItem;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/PhotoItem;

    invoke-direct {p0, v0}, Lcom/android/camera/data/PhotoItemProxy;-><init>(Lcom/android/camera/data/PhotoItem;)V

    .line 22
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isExtra:Lcom/google/common/base/Optional;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/BurstFrameItem;->sequenceId:I

    .line 29
    return-void
.end method

.method private compareTo(Lcom/android/camera/data/BurstFrameItem;)I
    .locals 3

    .prologue
    const v0, 0x7fffffff

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getSequenceId()I
    :try_end_0
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/camera/data/BurstFrameItem;->getSequenceId()I
    :try_end_1
    .catch Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 112
    :goto_1
    if-ne v1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 119
    :goto_2
    return v0

    .line 103
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_2

    .line 109
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/android/camera/data/BurstFrameItem;

    invoke-direct {p0, p1}, Lcom/android/camera/data/BurstFrameItem;->compareTo(Lcom/android/camera/data/BurstFrameItem;)I

    move-result v0

    return v0
.end method

.method public final getSequenceId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lcom/android/camera/data/BurstFrameItem;->sequenceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->getSequenceIndexOfFile(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/data/BurstFrameItem;->sequenceId:I

    .line 92
    :cond_0
    iget v0, p0, Lcom/android/camera/data/BurstFrameItem;->sequenceId:I

    return v0
.end method

.method public final isCover()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isCover:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isCover:Ljava/lang/Boolean;

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isCover:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 74
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->isCover(Ljava/io/File;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isCover:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public final isExtra()Z
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isExtra:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/data/BurstFrameItem;->isExtra:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->isExtraFile(Ljava/io/File;)Z

    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/data/BurstFrameItem;->isExtra:Lcom/google/common/base/Optional;

    goto :goto_0
.end method

.method public final refresh()Lcom/android/camera/data/BurstFrameItem;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->getPhotoItem()Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/PhotoItem;->refresh()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    instance-of v1, v0, Lcom/android/camera/data/BurstFrameItem;

    if-nez v1, :cond_1

    .line 39
    new-instance v1, Lcom/android/camera/data/BurstFrameItem;

    check-cast v0, Lcom/android/camera/data/PhotoItem;

    invoke-direct {v1, v0}, Lcom/android/camera/data/BurstFrameItem;-><init>(Lcom/android/camera/data/PhotoItem;)V

    move-object v0, v1

    goto :goto_0

    .line 41
    :cond_1
    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    goto :goto_0
.end method

.method public final bridge synthetic refresh()Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/camera/data/BurstFrameItem;->refresh()Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    return-object v0
.end method
