.class public final Lcom/android/camera/data/NewestFirstComparator;
.super Ljava/lang/Object;
.source "NewestFirstComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/data/FilmstripItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final now:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/data/NewestFirstComparator;->now:Ljava/util/Date;

    .line 29
    return-void
.end method

.method private final isFuture(Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/data/NewestFirstComparator;->now:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 12
    check-cast p1, Lcom/android/camera/data/FilmstripItem;

    check-cast p2, Lcom/android/camera/data/FilmstripItem;

    .line 1033
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    .line 1034
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    .line 1038
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/NewestFirstComparator;->isFuture(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    .line 1042
    :goto_0
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/data/NewestFirstComparator;->isFuture(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1043
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    .line 1061
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    neg-int v0, v0

    .line 1047
    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    .line 2061
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    neg-int v0, v0

    .line 1050
    :cond_0
    if-nez v0, :cond_1

    .line 1051
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 12
    :cond_1
    return v0

    .line 1040
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 1044
    :cond_3
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    goto :goto_1
.end method
