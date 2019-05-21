.class Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;
.super Ljava/lang/Object;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameSlot"
.end annotation


# instance fields
.field private mFlags:I

.field private mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

.field private mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 72
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFlags:I

    .line 73
    return-void
.end method


# virtual methods
.method public assignFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->retain()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 97
    :cond_0
    return-void
.end method

.method public getFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->retain()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->releaseFrame()V

    .line 104
    :cond_0
    return-object v0
.end method

.method public getType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    return-object v0
.end method

.method public hasFrame()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markWritable()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->setReadOnly(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public releaseFrame()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 88
    :cond_0
    return-void
.end method
