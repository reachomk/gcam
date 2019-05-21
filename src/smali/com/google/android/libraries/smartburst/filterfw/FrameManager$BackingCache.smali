.class abstract Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;
.super Ljava/lang/Object;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BackingCache"
.end annotation


# instance fields
.field protected mCacheMaxSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/high16 v0, 0xc00000

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->mCacheMaxSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->mCacheMaxSize:I

    return v0
.end method

.method public abstract getSizeLeft()I
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->mCacheMaxSize:I

    .line 128
    return-void
.end method
