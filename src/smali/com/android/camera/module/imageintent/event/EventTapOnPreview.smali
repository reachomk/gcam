.class public Lcom/android/camera/module/imageintent/event/EventTapOnPreview;
.super Ljava/lang/Object;
.source "EventTapOnPreview.java"


# instance fields
.field private final tapPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;->tapPoint:Landroid/graphics/Point;

    .line 10
    return-void
.end method


# virtual methods
.method public final getTapPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/module/imageintent/event/EventTapOnPreview;->tapPoint:Landroid/graphics/Point;

    return-object v0
.end method
