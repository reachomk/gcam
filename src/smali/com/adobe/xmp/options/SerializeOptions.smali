.class public final Lcom/adobe/xmp/options/SerializeOptions;
.super Lcom/adobe/xmp/options/Options;
.source "SerializeOptions.java"


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    .line 63
    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 73
    const-string v0, "  "

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 80
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 89
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    .line 63
    const/16 v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 73
    const-string v0, "  "

    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 80
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 100
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 390
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>(I)V

    .line 391
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 1282
    iput v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 392
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 1303
    iput-object v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 1324
    iput-object v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 394
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 1345
    iput v1, v0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBaseIndent()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public final getEncodeUTF16BE()Z
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEncodeUTF16LE()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "UTF-16BE"

    .line 375
    :goto_0
    return-object v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    const-string v0, "UTF-16LE"

    goto :goto_0

    .line 375
    :cond_1
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public final getExactPacketLength()Z
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public final getIncludeThumbnailPad()Z
    .locals 1

    .prologue
    .line 167
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public final getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public final getOmitPacketWrapper()Z
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public final getPadding()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public final getReadOnlyPacket()Z
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public final getSort()Z
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public final getUseCompactFormat()Z
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected final getValidOptions()I
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x1370

    return v0
.end method

.method public final setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    .prologue
    .line 118
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 119
    return-object p0
.end method

.method public final setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    .prologue
    .line 158
    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 159
    return-object p0
.end method
