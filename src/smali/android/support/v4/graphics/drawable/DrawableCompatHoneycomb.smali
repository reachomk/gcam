.class Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


# static fields
.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z


# direct methods
.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1065
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethodFetched:Z

    if-nez v0, :cond_0

    .line 1067
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "getLayoutDirection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 1068
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    sput-boolean v3, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethodFetched:Z

    .line 1075
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1077
    :try_start_1
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1083
    :goto_1
    return v0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1078
    :catch_1
    move-exception v0

    .line 1079
    const-string v1, "DrawableCompatJellybeanMr1"

    const-string v2, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 1083
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
