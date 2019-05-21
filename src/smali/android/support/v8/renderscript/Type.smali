.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Type$Builder;,
        Landroid/support/v8/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 190
    return-void
.end method

.method public static createX(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Type;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 211
    if-gtz p2, :cond_0

    .line 212
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 216
    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 217
    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 218
    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 219
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 220
    return-object v2
.end method

.method public static createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 235
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 236
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 240
    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 241
    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 242
    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 243
    iput p3, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 244
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 245
    return-object v2
.end method

.method public static createXYZ(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;III)Landroid/support/v8/renderscript/Type;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 261
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 262
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Dimension must be >= 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v8, v7

    move v9, v7

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    .line 266
    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 267
    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 268
    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 269
    iput p3, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 270
    iput p4, v2, Landroid/support/v8/renderscript/Type;->mDimZ:I

    .line 271
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 272
    return-object v2
.end method


# virtual methods
.method calcElementCount()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 151
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v6

    .line 152
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    .line 153
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    .line 154
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    const/4 v2, 0x6

    move v5, v2

    .line 159
    :goto_0
    if-nez v4, :cond_0

    move v4, v1

    .line 162
    :cond_0
    if-nez v3, :cond_1

    move v3, v1

    .line 165
    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    .line 169
    :cond_2
    mul-int v2, v4, v3

    mul-int/2addr v2, v0

    mul-int/2addr v2, v5

    move v8, v2

    move v2, v3

    move v3, v4

    move v4, v8

    .line 171
    :goto_1
    if-eqz v6, :cond_7

    if-gt v3, v1, :cond_3

    if-gt v2, v1, :cond_3

    if-le v0, v1, :cond_7

    .line 172
    :cond_3
    if-le v3, v1, :cond_4

    .line 173
    shr-int/lit8 v3, v3, 0x1

    .line 175
    :cond_4
    if-le v2, v1, :cond_5

    .line 176
    shr-int/lit8 v2, v2, 0x1

    .line 178
    :cond_5
    if-le v0, v1, :cond_6

    .line 179
    shr-int/lit8 v0, v0, 0x1

    .line 182
    :cond_6
    mul-int v7, v3, v2

    mul-int/2addr v7, v0

    mul-int/2addr v7, v5

    add-int/2addr v4, v7

    goto :goto_1

    .line 184
    :cond_7
    iput v4, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    .line 185
    return-void

    :cond_8
    move v5, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getDummyType(Landroid/support/v8/renderscript/RenderScript;J)J
    .locals 10

    .prologue
    .line 197
    iget v4, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    iget v9, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nIncTypeCreate(JIIIZZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
