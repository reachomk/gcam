.class Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheNone;
.super Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackingCacheNone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheNone;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeLeft()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method
