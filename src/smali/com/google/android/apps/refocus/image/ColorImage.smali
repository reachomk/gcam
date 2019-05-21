.class public Lcom/google/android/apps/refocus/image/ColorImage;
.super Ljava/lang/Object;
.source "ColorImage.java"


# instance fields
.field private data:[B

.field private format:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->width:I

    .line 58
    iput p2, p0, Lcom/google/android/apps/refocus/image/ColorImage;->height:I

    .line 59
    iput-object p4, p0, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    .line 60
    iput p3, p0, Lcom/google/android/apps/refocus/image/ColorImage;->format:I

    .line 61
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/apps/refocus/image/ColorImage;->format:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/apps/refocus/image/ColorImage;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/apps/refocus/image/ColorImage;->width:I

    return v0
.end method

.method public setBuffer([B)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    .line 89
    return-void
.end method

.method public swapBuffers(Lcom/google/android/apps/refocus/image/ColorImage;)Z
    .locals 2

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/apps/refocus/image/ColorImage;->format:I

    iget v1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->format:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/apps/refocus/image/ColorImage;->width:I

    iget v1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/apps/refocus/image/ColorImage;->height:I

    iget v1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->height:I

    if-eq v0, v1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    .line 110
    iget-object v1, p1, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    iput-object v1, p0, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    .line 111
    iput-object v0, p1, Lcom/google/android/apps/refocus/image/ColorImage;->data:[B

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method
