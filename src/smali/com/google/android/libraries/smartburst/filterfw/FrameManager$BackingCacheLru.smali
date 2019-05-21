.class Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;
.super Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackingCacheLru"
.end annotation


# instance fields
.field private mTimestamp:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;->mTimestamp:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->cachePriority:I

    .line 245
    return-void
.end method

.method protected onFetchBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;->mTimestamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;->mTimestamp:I

    .line 250
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;->mTimestamp:I

    iput v0, p1, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->cachePriority:I

    .line 251
    return-void
.end method
