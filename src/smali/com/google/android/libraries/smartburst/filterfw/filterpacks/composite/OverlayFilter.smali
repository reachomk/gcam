.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "OverlayFilter.java"


# static fields
.field public static final OVERLAY_ADD:I = 0x2

.field public static final OVERLAY_BURN:I = 0x8

.field public static final OVERLAY_DARKEN:I = 0xb

.field public static final OVERLAY_DIFFERENCE:I = 0x5

.field public static final OVERLAY_DIVIDE:I = 0x3

.field public static final OVERLAY_DODGE:I = 0x7

.field public static final OVERLAY_HARDLIGHT:I = 0x9

.field public static final OVERLAY_LIGHTEN:I = 0xc

.field public static final OVERLAY_MULTIPLY:I = 0x1

.field public static final OVERLAY_NORMAL:I = 0x0

.field public static final OVERLAY_OVERLAY:I = 0xd

.field public static final OVERLAY_SCREEN:I = 0x6

.field public static final OVERLAY_SOFTLIGHT:I = 0xa

.field public static final OVERLAY_SQUARED_DIFFERENCE:I = 0xe

.field public static final OVERLAY_SUBTRACT:I = 0x4

.field private static final mDefaultQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;


# instance fields
.field private mHasMask:Z

.field private mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mInputFrameCount:I

.field private mOldOverlayMode:I

.field private mOpacity:F

.field private mOverlayMode:I

.field private mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

.field private mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    const/4 v1, 0x0

    invoke-static {v2, v2, v3, v3}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->fromRect(FFFF)Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mDefaultQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOpacity:F

    .line 54
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 55
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 56
    iput-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    .line 57
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOldOverlayMode:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    .line 63
    return-void
.end method

.method private final createShader(Z)V
    .locals 4

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->genVertexShader(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->genFragmentShader(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-direct {v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 202
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 204
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "a_texcoord_full"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setBlendEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setBlendFunc(II)V

    .line 209
    return-void

    .line 203
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final genFragmentShader(ZZ)Ljava/lang/String;
    .locals 10

    .prologue
    .line 276
    if-eqz p1, :cond_0

    const-string v0, "tex_sampler_2"

    move-object v6, v0

    .line 277
    :goto_0
    if-eqz p1, :cond_1

    .line 279
    const-string v0, "uniform sampler2D tex_sampler_1;\n"

    move-object v5, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "uniform sampler2D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    if-eqz p2, :cond_3

    .line 283
    const-string v0, "varying vec2 v_texcoord_mask;\n"

    move-object v3, v0

    :goto_3
    if-eqz p1, :cond_4

    .line 284
    const-string v0, "varying vec2 v_texcoord_src;\n"

    move-object v2, v0

    :goto_4
    if-eqz p1, :cond_5

    .line 287
    const-string v0, "  vec4 srcColor = texture2D(tex_sampler_1, v_texcoord_src);\n"

    move-object v1, v0

    .line 288
    :goto_5
    if-eqz p2, :cond_6

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2d

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "ovlColor.a = texture2D("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", v_texcoord_mask).a;\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_6
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->getOutputColor()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xe1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "precision mediump float;\nuniform sampler2D tex_sampler_0;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "uniform float opacity;\nvarying vec2 v_texcoord;\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "void main() {\n  vec4 ovlColor = texture2D(tex_sampler_0, v_texcoord);\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gl_FragColor = vec4("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ovlColor.a * opacity);\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    return-object v0

    .line 276
    :cond_0
    const-string v0, "tex_sampler_1"

    move-object v6, v0

    goto/16 :goto_0

    .line 279
    :cond_1
    const-string v0, ""

    move-object v5, v0

    goto/16 :goto_1

    .line 280
    :cond_2
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_2

    .line 283
    :cond_3
    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_3

    .line 284
    :cond_4
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_4

    .line 288
    :cond_5
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_5

    .line 290
    :cond_6
    const-string v0, ""

    goto/16 :goto_6
.end method

.method private final genVertexShader(ZZ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 259
    if-eqz p2, :cond_0

    .line 261
    const-string v0, "attribute vec2 a_texcoord_full;\n"

    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 262
    const-string v0, "attribute vec2 a_texcoord_src;\n"

    move-object v4, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 264
    const-string v0, "varying vec2 v_texcoord_mask;\n"

    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_3

    .line 265
    const-string v0, "varying vec2 v_texcoord_src;\n"

    move-object v2, v0

    :goto_3
    if-eqz p2, :cond_4

    .line 269
    const-string v0, "v_texcoord_mask = a_texcoord_full;\n"

    move-object v1, v0

    :goto_4
    if-eqz p1, :cond_5

    .line 270
    const-string v0, "v_texcoord_src = a_texcoord_src;\n"

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x96

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "varying vec2 v_texcoord;\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "void main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    return-object v0

    .line 261
    :cond_0
    const-string v0, ""

    move-object v5, v0

    goto/16 :goto_0

    .line 262
    :cond_1
    const-string v0, ""

    move-object v4, v0

    goto/16 :goto_1

    .line 264
    :cond_2
    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_2

    .line 265
    :cond_3
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_3

    .line 269
    :cond_4
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_4

    .line 270
    :cond_5
    const-string v0, ""

    goto/16 :goto_5
.end method

.method private final getOutputColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayMode:I

    packed-switch v0, :pswitch_data_0

    .line 244
    const-string v0, "ovlColor.rgb"

    :goto_0
    return-object v0

    .line 214
    :pswitch_0
    const-string v0, "srcColor.rgb * ovlColor.rgb"

    goto :goto_0

    .line 216
    :pswitch_1
    const-string v0, "srcColor.rgb + ovlColor.rgb"

    goto :goto_0

    .line 218
    :pswitch_2
    const-string v0, "srcColor.rgb / ovlColor.rgb"

    goto :goto_0

    .line 220
    :pswitch_3
    const-string v0, "srcColor.rgb - ovlColor.rgb"

    goto :goto_0

    .line 222
    :pswitch_4
    const-string v0, "abs(srcColor.rgb - ovlColor.rgb)"

    goto :goto_0

    .line 224
    :pswitch_5
    const-string v0, "1.0 - ((1.0 - ovlColor.rgb) * (1.0 - srcColor.rgb))"

    goto :goto_0

    .line 226
    :pswitch_6
    const-string v0, "srcColor.rgb / (1.0 - ovlColor.rgb)"

    goto :goto_0

    .line 228
    :pswitch_7
    const-string v0, "1.0 - ((1.0 - srcColor.rgb) / ovlColor.rgb)"

    goto :goto_0

    .line 230
    :pswitch_8
    const-string v0, "vec3(ovlColor.r > 0.5 ? 1.0 - ((1.0 - 2.0 * (ovlColor.r - 0.5)) * (1.0 - srcColor.r)) : (2.0 * ovlColor.r * srcColor.r),     ovlColor.g > 0.5 ? 1.0 - ((1.0 - 2.0 * (ovlColor.g - 0.5)) * (1.0 - srcColor.g)) : (2.0 * ovlColor.g * srcColor.g),     ovlColor.b > 0.5 ? 1.0 - ((1.0 - 2.0 * (ovlColor.b - 0.5)) * (1.0 - srcColor.b)) : (2.0 * ovlColor.b * srcColor.b))"

    goto :goto_0

    .line 234
    :pswitch_9
    const-string v0, "srcColor.rgb * ((1.0 - srcColor.rgb) * ovlColor.rgb + (1.0 - ((1.0 - ovlColor.rgb) * (1.0 - srcColor.rgb))))"

    goto :goto_0

    .line 236
    :pswitch_a
    const-string v0, "min(srcColor.rgb, ovlColor.rgb)"

    goto :goto_0

    .line 238
    :pswitch_b
    const-string v0, "max(srcColor.rgb, ovlColor.rgb)"

    goto :goto_0

    .line 240
    :pswitch_c
    const-string v0, "srcColor.rgb * (srcColor.rgb + (2.0 * ovlColor.rgb) * (1.0 - srcColor.rgb))"

    goto :goto_0

    .line 242
    :pswitch_d
    const-string v0, "(srcColor.rgb - ovlColor.rgb) * (srcColor.rgb - ovlColor.rgb)"

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static needSourceForMode(I)Z
    .locals 1

    .prologue
    .line 296
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final passCountFor([Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)I
    .locals 5

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    array-length v0, p2

    .line 190
    :goto_0
    return v0

    .line 182
    :cond_0
    if-nez p2, :cond_1

    .line 183
    array-length v0, p1

    goto :goto_0

    .line 185
    :cond_1
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_2

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    array-length v1, p1

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Mismatch between input source quad count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") and target quad count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method private final updateInputCount(Z)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    if-eqz v0, :cond_1

    .line 254
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    .line 256
    :cond_1
    return-void
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 67
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 68
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "source"

    .line 70
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v2

    const-string v3, "overlay"

    .line 71
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v2

    const-string v3, "mask"

    .line 72
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "opacity"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 73
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "mode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 74
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "sourceQuads"

    const-class v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 75
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "targetQuads"

    const-class v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 76
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "composite"

    .line 77
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final onInputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    .line 86
    :cond_0
    return-void
.end method

.method public final onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opacity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "mOpacity"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sourceQuads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "mSourceQuads"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetQuads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "mTargetQuads"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "mOverlayMode"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected final onPrepare()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 108
    return-void
.end method

.method protected final onProcess()V
    .locals 14

    .prologue
    .line 112
    const-string v0, "composite"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v6

    .line 113
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayMode:I

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->needSourceForMode(I)Z

    move-result v7

    .line 115
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayMode:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOldOverlayMode:I

    if-eq v0, v1, :cond_0

    .line 116
    invoke-direct {p0, v7}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->createShader(Z)V

    .line 117
    invoke-direct {p0, v7}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->updateInputCount(Z)V

    .line 118
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayMode:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOldOverlayMode:I

    .line 121
    :cond_0
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v8

    .line 122
    const-string v0, "overlay"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v9

    .line 123
    const/4 v0, 0x0

    .line 124
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    if-eqz v1, :cond_1

    .line 125
    const-string v0, "mask"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 128
    :cond_1
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 129
    invoke-virtual {v6, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v10

    .line 131
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v1, v8, v10}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "opacity"

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOpacity:F

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 134
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    array-length v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Mismatch between input source quad count ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") and target quad count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    sget-object v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mDefaultQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 142
    sget-object v3, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mDefaultQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 143
    const/4 v1, 0x0

    .line 144
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    if-eqz v4, :cond_3

    .line 145
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 146
    const/4 v1, 0x1

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    if-eqz v4, :cond_b

    .line 149
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 150
    const/4 v1, 0x1

    move-object v5, v3

    .line 152
    :goto_0
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mSourceQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mTargetQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    invoke-direct {p0, v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->passCountFor([Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)I

    move-result v1

    .line 153
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_a

    .line 154
    array-length v3, v2

    if-ge v4, v3, :cond_8

    move v3, v4

    :goto_3
    aget-object v11, v2, v3

    .line 155
    array-length v3, v5

    if-ge v4, v3, :cond_9

    move v3, v4

    :goto_4
    aget-object v3, v5, v3

    .line 156
    iget-object v12, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v12, v11}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setSourceQuad(Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)V

    .line 157
    iget-object v11, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v11, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetQuad(Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)V

    .line 159
    if-eqz v7, :cond_4

    .line 160
    iget-object v11, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v12, "a_texcoord_src"

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;->asCoords()[F

    move-result-object v3

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v3, v13}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 164
    :cond_4
    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mInputFrameCount:I

    new-array v11, v3, [Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 165
    const/4 v12, 0x0

    const/4 v3, 0x1

    aput-object v9, v11, v12

    .line 166
    if-eqz v7, :cond_5

    .line 167
    const/4 v12, 0x1

    const/4 v3, 0x2

    aput-object v8, v11, v12

    .line 169
    :cond_5
    iget-boolean v12, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mHasMask:Z

    if-eqz v12, :cond_6

    .line 170
    aput-object v0, v11, v3

    .line 172
    :cond_6
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/composite/OverlayFilter;->mOverlayShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v11, v10}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 152
    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 154
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 155
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 175
    :cond_a
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->setTimestamp(J)V

    .line 176
    invoke-virtual {v6, v10}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 177
    return-void

    :cond_b
    move-object v5, v3

    goto :goto_0
.end method
