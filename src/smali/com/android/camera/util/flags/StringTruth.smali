.class public final Lcom/android/camera/util/flags/StringTruth;
.super Ljava/lang/Object;
.source "StringTruth.java"


# static fields
.field private static final TRUE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 13
    const-string v0, "^(1|true|t|on|yes|y)$"

    .line 14
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/flags/StringTruth;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    const-string v0, "^(0|false|f|off|no|n)$"

    .line 16
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    return-void
.end method

.method public static isTrue(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/camera/util/flags/StringTruth;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
