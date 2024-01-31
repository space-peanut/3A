public class CompoundFigure {
    private SimpleFigure[] figures;

    public CompoundFigure(SimpleFigure[] figures) {
        this.figures = figures;
    }
    
    public void draw() {
        for (SimpleFigure figure : figures) {
            figure.draw();
        }
        CanvasFrame.getCanvas().redraw();
    }

    public void erease() {
        // this.figures = new SimpleFigure[0];
        CanvasFrame.getCanvas().redraw();
    }
}
