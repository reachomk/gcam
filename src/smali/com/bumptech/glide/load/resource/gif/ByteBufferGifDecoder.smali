.class public final Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;,
        Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final GIF_DECODER_FACTORY:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

.field private static final PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Landroid/content/Context;

.field private final gifDecoderFactory:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

.field private final parserPool:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

.field private final provider$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FE9IN6RRLE9HMABR7D5J2UHR9CP16IT3DC5O50SJFEPKM8PBI7C______:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->GIF_DECODER_FACTORY:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    .line 40
    const-string v0, "com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation"

    const/4 v1, 0x0

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    .line 43
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 6

    .prologue
    .line 57
    sget-object v4, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->PARSER_POOL:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    sget-object v5, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->GIF_DECODER_FACTORY:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 69
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->gifDecoderFactory:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;

    .line 70
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-direct {v0, p2, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->provider$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FE9IN6RRLE9HMABR7D5J2UHR9CP16IT3DC5O50SJFEPKM8PBI7C______:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 71
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    .line 72
    return-void
.end method

.method private decode$5166KOBMC4NMSQBF5T17IT3589QMCPJ5E8TKIIACCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRCDTGM8BQFE1Q6IRREECTIIJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNMEQB65T3MIPI4E9GNEOB2DHIL4PBJDTQN4OR57C______(Ljava/nio/ByteBuffer;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->obtain(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v8

    .line 1093
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v10

    .line 1094
    invoke-virtual {v8}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v3

    .line 1095
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getNumFrames()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v8}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    .line 85
    return-object v0

    .line 1123
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getHeight()I

    move-result v1

    div-int/2addr v1, p3

    .line 1124
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getWidth()I

    move-result v2

    div-int/2addr v2, p2

    .line 1123
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1125
    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 1128
    :goto_1
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1129
    const-string v2, "BufferGifDecoder"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1130
    const-string v2, "BufferGifDecoder"

    .line 1133
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getHeight()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x7d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Downsampling GIF, sampleSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", target dimens: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], actual dimens: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1130
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_2
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->provider$9HHMUR9FC9QMQS3KCLHMGBR7DHKM8P9FDHNM2P1FE9IN6RRLE9HMABR7D5J2UHR9CP16IT3DC5O50SJFEPKM8PBI7C______:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 1142
    new-instance v2, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    invoke-direct {v2, v4, v3, p1, v1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 1103
    invoke-interface {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 1104
    invoke-interface {v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1105
    if-eqz v7, :cond_0

    .line 1109
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v4

    .line 1111
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/bumptech/glide/gifdecoder/GifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V

    .line 1115
    const-string v1, "BufferGifDecoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1116
    const-string v1, "BufferGifDecoder"

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x33

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Decoded GIF from stream in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_3
    new-instance v1, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1125
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto/16 :goto_1

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->parserPool:Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;

    invoke-virtual {v1, v8}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->decode$5166KOBMC4NMSQBF5T17IT3589QMCPJ5E8TKIIACCDNMQBR2ELMN0T35CDK2UPRCD5I6ABRCDTGM8BQFE1Q6IRREECTIIJ33DTMIUOJLDLO78PB3D0NMER39CHIIUR3FC5I2USJ5EDNNASJ3CKNMEQB65T3MIPI4E9GNEOB2DHIL4PBJDTQN4OR57C______(Ljava/nio/ByteBuffer;II)Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic handles(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2076
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;-><init>()V

    .line 2077
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;->DISABLE_ANIMATION:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 2078
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_0
.end method
