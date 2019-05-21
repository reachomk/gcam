.class final Lcom/android/camera/ui/UiStrings$AbsentUiStringSingleton;
.super Ljava/lang/Object;
.source "UiStrings.java"


# static fields
.field private static final sAbsent:Lcom/android/camera/ui/UiString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/ui/UiStrings$AbsentUiString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/UiStrings$AbsentUiString;-><init>(B)V

    sput-object v0, Lcom/android/camera/ui/UiStrings$AbsentUiStringSingleton;->sAbsent:Lcom/android/camera/ui/UiString;

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/ui/UiString;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/ui/UiStrings$AbsentUiStringSingleton;->sAbsent:Lcom/android/camera/ui/UiString;

    return-object v0
.end method
