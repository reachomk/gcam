.class public Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;
.super Ljava/lang/Object;
.source "FastBoxBlur.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final mHorizontalBoxFilterSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pixel_weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 sum_color = vec4(0.0); \n  for (int i = -$$filter_radius_width$$; i <= $$filter_radius_width$$; i++) {\n    sum_color += texture2D(tex_sampler_0, \n        v_texcoord + vec2(pix * float(i), 0));\n  }\n  gl_FragColor = sum_color * pixel_weight;\n}\n"

.field private static final mVerticalBoxFilterSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pixel_weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 sum_color = vec4(0.0);\n  for (int j = -$$filter_radius_height$$; j <= $$filter_radius_height$$; j++) {\n    sum_color += texture2D(tex_sampler_0, \n        v_texcoord + vec2(0, pix * float(j)));\n  }\n  gl_FragColor = sum_color * pixel_weight;\n}\n"


# instance fields
.field private final mFilterHeight:I

.field private final mFilterWidth:I

.field private mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mIdentityShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private final mIsOpenGLSupported:Z

.field private mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mIsOpenGLSupported:Z

    .line 67
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    .line 68
    iput p3, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    .line 69
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mIsOpenGLSupported:Z

    if-eqz v0, :cond_2

    .line 70
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    if-le v0, v3, :cond_0

    .line 71
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pixel_weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 sum_color = vec4(0.0); \n  for (int i = -$$filter_radius_width$$; i <= $$filter_radius_width$$; i++) {\n    sum_color += texture2D(tex_sampler_0, \n        v_texcoord + vec2(pix * float(i), 0));\n  }\n  gl_FragColor = sum_color * pixel_weight;\n}\n"

    const-string v1, "\\$\\$filter_radius_width\\$\\$"

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    shr-int/lit8 v2, v2, 0x1

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    if-le v0, v3, :cond_1

    .line 77
    const-string v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pixel_weight;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 sum_color = vec4(0.0);\n  for (int j = -$$filter_radius_height$$; j <= $$filter_radius_height$$; j++) {\n    sum_color += texture2D(tex_sampler_0, \n        v_texcoord + vec2(0, pix * float(j)));\n  }\n  gl_FragColor = sum_color * pixel_weight;\n}\n"

    const-string v1, "\\$\\$filter_radius_height\\$\\$"

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    shr-int/lit8 v2, v2, 0x1

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 83
    :cond_1
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 85
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mIdentityShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 87
    :cond_2
    return-void
.end method

.method private static native blur(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
.end method

.method public static computeBlur(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 164
    invoke-static/range {p0 .. p6}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->blur(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    .line 165
    return-void
.end method


# virtual methods
.method public computeBlur(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v0

    .line 98
    aget v1, v0, v7

    if-lez v1, :cond_0

    aget v1, v0, v6

    if-gtz v1, :cond_1

    .line 99
    :cond_0
    const-string v1, "FastBoxBlur"

    aget v2, v0, v7

    aget v0, v0, v6

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "The width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of the input frame is invalid!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mIsOpenGLSupported:Z

    if-eqz v1, :cond_7

    .line 105
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "pix"

    aget v3, v0, v6

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 107
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "pixel_weight"

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "pix"

    aget v3, v0, v7

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 112
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "pixel_weight"

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 116
    :cond_3
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    if-ne v1, v6, :cond_4

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    if-ne v1, v6, :cond_4

    .line 117
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mIdentityShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    goto :goto_0

    .line 118
    :cond_4
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    if-le v1, v6, :cond_5

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    if-ne v1, v6, :cond_5

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    goto :goto_0

    .line 123
    :cond_5
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    if-ne v1, v6, :cond_6

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    if-le v1, v6, :cond_6

    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    goto :goto_0

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mVerticalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mHorizontalBoxFilterShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 133
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    goto :goto_0

    .line 136
    :cond_7
    invoke-virtual {p1, v6}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 137
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 139
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    aget v2, v0, v7

    aget v0, v0, v6

    mul-int/2addr v0, v2

    div-int v6, v1, v0

    .line 142
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->mFilterHeight:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/filterfw/imageutils/FastBoxBlur;->computeBlur(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 145
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 146
    invoke-virtual {p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    goto/16 :goto_0
.end method
