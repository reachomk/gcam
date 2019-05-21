.class public final Lcom/google/android/apps/refocus/metadata/GFocus;
.super Ljava/lang/Object;
.source "GFocus.java"


# instance fields
.field private focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)Lcom/google/android/apps/refocus/metadata/GFocus;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/apps/refocus/metadata/GFocus;

    invoke-direct {v0}, Lcom/google/android/apps/refocus/metadata/GFocus;-><init>()V

    .line 33
    iput-object p0, v0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    .line 34
    return-object v0
.end method

.method public static fromXMPMeta(Lcom/adobe/xmp/XMPMeta;)Lcom/google/android/apps/refocus/metadata/GFocus;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/GFocus;->initialize()V

    .line 51
    const-string v1, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "FocalDistance"

    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "BlurAtInfinity"

    .line 52
    invoke-interface {p0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/google/android/apps/refocus/processing/FocusSettings;

    invoke-direct {v1}, Lcom/google/android/apps/refocus/processing/FocusSettings;-><init>()V

    .line 58
    :try_start_0
    const-string v2, "http://ns.google.com/photos/1.0/focus/"

    const-string v3, "FocalDistance"

    .line 60
    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    .line 62
    const-string v2, "http://ns.google.com/photos/1.0/focus/"

    const-string v3, "BlurAtInfinity"

    .line 64
    invoke-interface {p0, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "DepthOfField"

    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :try_start_1
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "DepthOfField"

    .line 77
    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :cond_2
    :goto_1
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "FocalPointX"

    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "FocalPointY"

    .line 85
    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    :try_start_2
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "FocalPointX"

    .line 89
    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 91
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "FocalPointY"

    .line 93
    invoke-interface {p0, v0, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 100
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/google/android/apps/refocus/metadata/GFocus;->fromFocusSettings(Lcom/google/android/apps/refocus/processing/FocusSettings;)Lcom/google/android/apps/refocus/metadata/GFocus;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 95
    :catch_2
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "GFocus"

    .line 141
    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final getFocusSettings()Lcom/google/android/apps/refocus/processing/FocusSettings;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    return-object v0
.end method

.method public final toXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/google/android/apps/refocus/metadata/GFocus;->initialize()V

    .line 119
    :try_start_0
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v1, "BlurAtInfinity"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->blurAtInfinity:F

    .line 120
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 119
    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v1, "FocalDistance"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalDistance:F

    .line 122
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 121
    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v1, "DepthOfField"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->depthOfField:F

    .line 124
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 123
    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v1, "FocalPointX"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointX:F

    .line 126
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 125
    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v0, "http://ns.google.com/photos/1.0/focus/"

    const-string v1, "FocalPointY"

    iget-object v2, p0, Lcom/google/android/apps/refocus/metadata/GFocus;->focusSettings:Lcom/google/android/apps/refocus/processing/FocusSettings;

    iget v2, v2, Lcom/google/android/apps/refocus/processing/FocusSettings;->focalPointY:F

    .line 128
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 127
    invoke-interface {p1, v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method
