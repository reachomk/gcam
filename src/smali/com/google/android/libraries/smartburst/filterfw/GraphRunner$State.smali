.class Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# static fields
.field public static final HALTED:I = 0x10

.field public static final PAUSED:I = 0x8

.field public static final PREPARING:I = 0x2

.field public static final RUNNING:I = 0x4

.field public static final STOPPED:I = 0x1


# instance fields
.field private mCurrent:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addState(I)Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_0

    .line 87
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized check(I)Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized current()I
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeState(I)Z
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(I)V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$State;->mCurrent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
